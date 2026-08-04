import Image from '@/components/ui/atoms/Image/Image';
import styles from './ImageGalleryThumbnail.module.css';

export interface ImageGalleryThumbnailProps {
  src: string;
  alt: string;
  selected?: boolean;
  onClick?: () => void;
}

export default function ImageGalleryThumbnail({
  src,
  alt,
  selected = false,
  onClick,
}: ImageGalleryThumbnailProps) {
  return (
    <button
      type="button"
      className={`${styles.thumbnail} ${selected ? styles.selected : ''}`}
      onClick={onClick}
    >
      <Image src={src} alt={alt} width={72} height={72} />
    </button>
  );
}
