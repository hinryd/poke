require('dotenv').config();

const config = {
  tubeApi: process.env.TUBE_API || "https://inner-api.poketube.fun/api/",
  invapi: process.env.INVAPI || "https://invid-api.poketube.fun/bHj665PpYhUdPWuKPfZuQGoX/api/v1",
  dislikes: process.env.DISLIKES_API || "https://returnyoutubedislikeapi.com/votes?videoId=",
  invchannel: process.env.INVCHANNEL || "https://invid-api.poketube.fun/api/v1",
  p_url: process.env.P_URL || "https://p.poketube.fun",
  useragent: process.env.USERAGENT || "PokeTube/2.0.0 (GNU/Linux; Android 14; Trisquel 11; poketube-vidious; like FreeTube)",
  media_proxy: process.env.MEDIA_PROXY || "https://image-proxy.poketube.fun",
  videourl: process.env.VIDEO_URL || "https://eu-proxy.poketube.fun",
  email_main_url: process.env.EMAIL_MAIN_URL || "https://email-server.poketube.fun",
  mastodon_client_url: process.env.MASTODON_CLIENT_URL || "https://social.poketube.fun",
  mastodon_client_server_name: process.env.MASTODON_CLIENT_SERVER_NAME || "PokeSocial",
  libreoffice_online_url: process.env.LIBREOFFICE_ONLINE_URL || "https://office.poketube.fun",
  cacher_max_age: process.env.CACHER_MAX_AGE || "86400",
  enablealwayshttps: process.env.ENABLEALWAYSHTTPS ? process.env.ENABLEALWAYSHTTPS === 'true' : false,
  proxylocation: process.env.PROXYLOCATION || "USA",
  banner: process.env.BANNER || "welcome to poke!",
  t_url: process.env.T_URL || "https://t.poketube.fun/",
  server_port: process.env.SERVER_PORT || "6003"
};

console.log(config); // Or export this object as a module

module.exports = config;