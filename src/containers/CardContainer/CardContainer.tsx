import Card from '@/components/ui/molecules/Card/Card';
import styles from './CardContainer.module.css';
import { ComponentType, SVGProps } from 'react';

type IconComponent = ComponentType<SVGProps<SVGSVGElement> & { size?: number }>;

interface CardContainerProps {
  cards: {
    icon?: IconComponent;
    title?: string;
    description?: string;
    onClick?: () => void;
  }[];
}

const CardContainer = ({ cards }: CardContainerProps) => (
  <div className={styles.container}>
    {cards.map(({ icon: Icon, title, description, onClick }) => (
      <Card
        key={title}
        icon={Icon ? <Icon size={20} /> : undefined}
        title={title}
        description={description}
        onClick={onClick}
      />
    ))}
  </div>
);

export default CardContainer;
