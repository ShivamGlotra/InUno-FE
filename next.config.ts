import type { NextConfig } from 'next';

// Remove the wildcard hostname before the website is deployed to production. This is only for development purposes.

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'placehold.co',
      },
      {
        protocol: 'https',
        hostname: '**',
      },
    ],
  },
};

export default nextConfig;
