import styles from './Image.module.css';
import Image from 'next/image';

export interface ImageProps {
  src: string;
  alt: string;
  width?: number;
  height?: number;
  objectFit?: 'cover' | 'contain' | 'fill';
  className?: string;
}

export default function ImageComponent({
  src,
  alt,
  width,
  height,
  objectFit = 'cover',
  className = '',
}: ImageProps) {
  return (
    <Image
      src={src}
      alt={alt}
      width={width}
      height={height}
      className={`${styles.image} ${styles[objectFit]} ${className}`}
    />
  );
}
