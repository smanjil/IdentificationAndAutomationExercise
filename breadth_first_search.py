
import time


def bfs(map_nodes, map_distance, start_vertex, frontier, goal, total_distances, explored):
    nodes = start_vertex

    frontier.extend(nodes)

    while True:
        print (frontier, explored)

        if not frontier: return False
        
        if nodes == goal:
            print ('\nGoal found: ', nodes)
            return True

        if nodes not in frontier or nodes not in explored:
            frontier.pop(frontier.index(nodes))
            explored.append(nodes)
            frontier.extend(list(filter(lambda item: item not in explored, map_nodes[nodes])))

            nodes = frontier[0]

        time.sleep(3)


if __name__ == '__main__':
    map_nodes = {
        'A': ['B', 'D'],
        'B': ['A', 'C', 'E'],
        'C': ['B', 'E'],
        'D': ['A'],
        'E': ['B', 'C']
    }

    map_distance = {
        'AB': 8,
        'AD': 3,
        'BC': 5,
        'BE': 8,
        'CE': 2
    }

    start_vertex = 'A'
    frontier = []
    goal = 'E'
    total_distances = {}
    explored = []

    bfs(map_nodes, map_distance, start_vertex, frontier, goal, total_distances, explored)