module Constants
  module Queries
    STANDART = {
      1 => 'SELECT DISTINCT status FROM tasks ORDER BY status',
      2 => 'SELECT count(t.id) as count_tasks FROM projects p LEFT JOIN tasks t '\
           'ON t.project_id = p.id  GROUP BY p.id ORDER BY count_tasks DESC',
      3 => 'SELECT p.name, count(t.id) as count_tasks FROM projects p '\
           'LEFT JOIN tasks t ON  t.project_id = p.id  GROUP BY p.name ORDER BY p.name',
      4 => "SELECT t.* FROM tasks t, projects p WHERE p.name LIKE 'N%' AND t.project_id = p.id",
      5 => 'SELECT p.*, count(t.id) as count_tasks FROM projects p LEFT JOIN tasks t '\
           "on t.project_id = p.id WHERE p.name LIKE '_%a%_' GROUP BY p.id, p.name",
      6 => 'SELECT t.name, COUNT(t.id) as task_count FROM tasks as t GROUP BY t.name HAVING '\
           'count(t.id)>1 ORDER BY t.name',
      7 => 'SELECT t.name, t.status, COUNT(t.id) as task_count FROM tasks t, projects p '\
           "WHERE p.name='Garage' AND t.project_id = p.id GROUP BY t.name, t.status "\
           'HAVING count(t.id)>1 ORDER BY task_count',
      8 => 'SELECT p.name FROM projects p WHERE EXISTS (SELECT 1 FROM tasks t '\
           "WHERE p.id=t.project_id AND t.status='completed' HAVING count(t.id)>10) ORDER BY p.id"
    }.freeze
  end
end
