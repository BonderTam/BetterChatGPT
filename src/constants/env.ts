import { Environment } from "@type/environment";
export const env: Environment = {
  chatgpt_apikey: import.meta.env.VITE_APP_CHAT_API_KEY!,
  chatgpt_chatapi: import.meta.env.VITE_APP_CHAT_API!
};
