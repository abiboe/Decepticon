-- Create the langgraph database used by LangGraph Platform.
--
-- Postgres auto-runs files in /docker-entrypoint-initdb.d/ in lexicographic order
-- on first startup (only when data volume is empty). This ensures langgraph exists
-- alongside the litellm and decepticon_web databases.
--
-- To apply to an existing deployment without data loss, create the DB
-- manually: `docker exec decepticon-postgres psql -U decepticon -c "CREATE DATABASE langgraph;"`

CREATE DATABASE langgraph;
GRANT ALL PRIVILEGES ON DATABASE langgraph TO decepticon;
