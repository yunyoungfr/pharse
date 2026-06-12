export default function handler(req, res) {
  const url = process.env.SUPABASE_URL;
  const anonKey = process.env.SUPABASE_ANON_KEY;

  if (!url || !anonKey) {
    return res.status(500).json({ error: "Supabase environment variables are not configured." });
  }

  res.setHeader("Cache-Control", "no-store");
  res.status(200).json({ url, anonKey });
}
