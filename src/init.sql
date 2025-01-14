CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
	password VARCHAR(255) NOT NULL,
	max_todo INTEGER DEFAULT 5 NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS tasks (
  id SERIAL PRIMARY KEY,
  content TEXT NOT NULL,
  user_id INTEGER NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT tasks_FK FOREIGN KEY (user_id) REFERENCES users(id)
);