import RatingStarUnit from '@/components/ui/atoms/RatingStarUnit/RatingStarUnit';
import styles from './StarRating.module.css';

export interface StarRatingProps {
  rating: number;
  max?: number;
}

export default function StarRating({ rating, max = 5 }: StarRatingProps) {
  return (
    <div className={styles.rating} aria-label={`${rating} out of ${max} stars`}>
      {Array.from({ length: max }).map((_, index) => {
        const filled = index + 1 <= rating;
        const half = !filled && index < rating;

        return <RatingStarUnit key={index} filled={filled} half={half} />;
      })}
    </div>
  );
}
