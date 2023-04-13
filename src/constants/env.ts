import { Environment } from "@type/environment";
export const env: Environment = {
  openai_apikey: import.meta.env.VITE_APP_CHAT_API_KEY!,
  openai_chatapi: import.meta.env.VITE_APP_CHAT_API!,
  openai_organization: import.meta.env.VITE_APP_CHAT_ORGANIZATION!
};
