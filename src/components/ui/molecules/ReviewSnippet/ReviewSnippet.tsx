import RatingStarUnit from '@/components/ui/atoms/RatingStarUnit/RatingStarUnit';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './ReviewSnippet.module.css';

export interface ReviewSnippetProps {
  author: string;
  rating: number;
  title: string;
  content: string;
}

export default function ReviewSnippet({ author, rating, title, content }: ReviewSnippetProps) {
  return (
    <article className={styles.review}>
      <div className={styles.rating}>
        {Array.from({ length: 5 }).map((_, index) => (
          <RatingStarUnit key={index} filled={index < rating} />
        ))}
      </div>

      <strong>{title}</strong>

      <Text>{content}</Text>

      <Text size="sm">Reviewed by {author}</Text>
    </article>
  );
}
