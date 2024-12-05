import os


class Config:
    class APP:
        TITLE = "NexStore API"
        DESCRIPTION = "API for NexStore"
        VERSION = "0.1.0"

    class SUPABASE:
        KEY = os.getenv("SUPABASE_KEY")
        URL = os.getenv("SUPABASE_URL")
