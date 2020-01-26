#include <algorithm>
#include "AntAlgorithm.h"

float get_q(const std::vector<float> &path) {
    return std::accumulate(path.begin(), path.end(), 0.f) / path.size();
}

Graph antAlgorithm(const Graph &graph, size_t start_vert, const Parameters &parameters) {
    auto pheromone_graph = Graph(graph.size(), parameters.start_pheromone);
    std::vector<size_t> taboo_list = {start_vert};

    auto current_vertex = start_vert;
    while (taboo_list.size() != graph.size()) {
        current_vertex = chose_vert(current_vertex, graph, pheromone_graph, parameters, taboo_list);
        update_pheromone(graph, parameters, pheromone_graph, taboo_list);
        taboo_list.push_back(current_vertex);
    }

    return pheromone_graph;
}

void update_pheromone(const Graph &graph,
                      const Parameters &parameters,
                      Graph &pheromone_graph,
                      const std::vector<size_t> &path) {
    for (size_t i = 0; i < graph.size(); i++) {
        for (size_t j = 0; j < graph.size(); j++) {
            if (i == j) {
                continue;
            }
            pheromone_graph.set(i, j, pheromone_graph.get(i, j) * (1 - parameters.p));
            if (pheromone_graph.get(i, j) < 0) {
                pheromone_graph.set(i, j, parameters.start_pheromone);
            }
        }
    }

    for (size_t i = 0; i < path.size(); i++) {
        size_t from = 0, to = 0;
        if (i != path.size() - 1) {
            from = path[i];
            to = path[i + 1];
        } else {
            from = path[i];
            to = path[0];
        }

        auto delta = parameters.q / graph.get(from, to);
        auto new_val = pheromone_graph.get(from, to) + delta;
        pheromone_graph.set(from, to, new_val);
        pheromone_graph.set(to, from, new_val);
    }
}

float random_probability() {
    static std::default_random_engine generator;
    static std::uniform_real_distribution<float> distribution(0, 1);
    return distribution(generator);
}

size_t chose_vert(size_t vertex,
                  const Graph &graph,
                  const Graph &pheromone_graph,
                  const Parameters &parameters,
                  const std::vector<size_t> &taboo_list) {
    auto probability = random_probability();
    auto available_vertexes = graph.getAvailableVertexes(vertex, taboo_list);

    auto probabilities = vertexes_probabilities(vertex, graph, pheromone_graph, parameters, available_vertexes);
    auto denominator = std::accumulate(probabilities.begin(), probabilities.end(), 0.f);

    auto curr_prob = 0.f;
    for (auto &v: available_vertexes) {
        curr_prob += probabilities[v] / denominator;
        if (probability <= curr_prob) {
            return v;
        }
    }

    return graph.size();
}

std::vector<float> vertexes_probabilities(size_t curr_vertex,
                                          const Graph &graph,
                                          const Graph &pheromone_graph,
                                          const Parameters &parameters,
                                          const std::vector<size_t> &available_vertexes) {
    std::vector<float> probabilities(graph.size(), 0);

    for (auto &v: available_vertexes) {
        probabilities[v] = static_cast<float &&>(std::pow(pheromone_graph.get(curr_vertex, v), parameters.a)
            * std::pow(1. / graph.get(curr_vertex, v), parameters.b));
    }

    return probabilities;
}
