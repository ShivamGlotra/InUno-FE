import Avatar from '@/components/ui/atoms/Avatar/Avatar';
import styles from './AccountMenuTrigger.module.css';

export interface AccountMenuTriggerProps {
  name: string;
  avatar?: string;
  onClick?: () => void;
}

export default function AccountMenuTrigger({ name, avatar, onClick }: AccountMenuTriggerProps) {
  return (
    <button className={styles.trigger} onClick={onClick} type="button">
      <Avatar src={avatar} alt={name} />
      <span className={styles.name}>{name}</span>
      <span className={styles.chevron}>⌄</span>
    </button>
  );
}
