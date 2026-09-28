'use client';
import Link from 'next/link';

export const ErrorPage = () => {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-100">
      <h1 className="text-6xl font-bold text-red-600">404</h1>
      <p className="text-xl text-gray-700">Oops! The page you are looking for does not exist.</p>
      <Link href="/" className="mt-4 px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
        Go Back Home
      </Link>
    </div>
  );
};

export default ErrorPage;
