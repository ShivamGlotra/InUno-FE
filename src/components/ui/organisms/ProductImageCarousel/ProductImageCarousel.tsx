import styles from './ProductImageCarousel.module.css';
import { Product } from '@/types/productType';
import { useState } from 'react';
import Button from '../../atoms/Button';
import Image from 'next/image';
import { getSampleImages } from '../../../../../tests/productsSampleData';

export interface ProductCarouselProps {
  alt?: string;
  productImage?: Product[];
}

const ArrowLeft = () => (
  <svg
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth="2"
    strokeLinecap="round"
    strokeLinejoin="round"
    aria-hidden="true"
  >
    <polyline points="15 18 9 12 15 6" />
  </svg>
);

const ArrowRight = () => (
  <svg
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth="2"
    strokeLinecap="round"
    strokeLinejoin="round"
    aria-hidden="true"
  >
    <polyline points="9 18 15 12 9 6" />
  </svg>
);

const ProductImageCarousel = ({ productImage }: ProductCarouselProps) => {
  const [index, setIndex] = useState<number>(0);
  const hasNext = index < (getSampleImages(5)?.length || 0) - 1;

  const handleNext = () => {
    if (hasNext) {
      setIndex(index + 1);
    }
  };

  return (
    <div className={styles.carouselContainer}>
      {getSampleImages(5) && getSampleImages(5).length > 0 ? (
        <>
          <Button
            variant="icon-only"
            className={styles.prevButton}
            onClick={() => setIndex(index - 1)}
            disabled={index === 0}
            aria-label="Previous image"
          >
            {<ArrowLeft />}
          </Button>
          <Image src={getSampleImages(5)[index]} alt="Product Image" width={300} height={300} />
          <Button
            variant="icon-only"
            className={styles.nextButton}
            onClick={handleNext}
            disabled={!hasNext}
            aria-label="Next image"
          >
            {<ArrowRight />}
          </Button>
        </>
      ) : (
        <p>No products available</p>
      )}
    </div>
  );
};

export default ProductImageCarousel;
