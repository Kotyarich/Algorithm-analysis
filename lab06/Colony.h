#ifndef LAB06_ANT_ALGORITHM_H
#define LAB06_ANT_ALGORITHM_H

#include <random>
#include "Graph.h"

struct Parameters {
    float a;
    float b;
    float p;
    float q;
    float start_pheromone;
};

float random_probability();
std::vector<float> vertexes_probabilities(size_t curr_vertex,
                                          const Graph &graph,
                                          const Graph &pheromone_graph,
                                          const Parameters &parameters,
                                          const std::vector<size_t> &available_vertexes);
size_t chose_vert(size_t vertex,
                  const Graph &graph,
                  const Graph &pheromone_graph,
                  const Parameters &parameters,
                  const std::vector<size_t> &taboo_list);
void update_pheromone(const Graph &graph,
                      const Parameters &parameters,
                      Graph &pheromone_graph,
                      const std::vector<size_t> &path);
Graph antAlgorithm(const Graph &graph, size_t start_vert, const Parameters &parameters);

#endif //LAB06_ANT_ALGORITHM_H
