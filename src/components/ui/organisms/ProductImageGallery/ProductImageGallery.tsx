import ImageGalleryThumbnail from '@/components/ui/molecules/ImageGalleryThumbnail/ImageGalleryThumbnail';
import Image from '@/components/ui/atoms/Image/Image';
import styles from './ProductImageGallery.module.css';

export interface ProductImageGalleryProps {
  images: {
    src: string;
    alt: string;
  }[];
}

export default function ProductImageGallery({ images }: ProductImageGalleryProps) {
  const main = images[0];

  return (
    <div className={styles.gallery}>
      <div className={styles.main}>
        {main && <Image src={main.src} alt={main.alt} width={600} height={600} />}
      </div>

      <div className={styles.thumbnails}>
        {images.map((image, index) => (
          <ImageGalleryThumbnail
            key={image.src}
            src={image.src}
            alt={image.alt}
            selected={index === 0}
          />
        ))}
      </div>
    </div>
  );
}
