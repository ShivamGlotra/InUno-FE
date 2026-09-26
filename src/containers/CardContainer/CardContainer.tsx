import Card from '@/components/ui/molecules/Card/Card';
import styles from './CardContainer.module.css';

interface CardContainerProps {
  cards: {
    icon?: React.ReactNode;
    title?: string;
    description?: string;
    onClick?: () => void;
  }[];
}

const CardContainer: React.FC<CardContainerProps> = ({ cards }) => {
  return (
    <div className={styles.container}>
      {cards.map((card, index) => (
        <Card
          key={index}
          icon={card.icon}
          title={card.title}
          description={card.description}
          onClick={card.onClick}
        />
      ))}
    </div>
  );
};

export default CardContainer;
