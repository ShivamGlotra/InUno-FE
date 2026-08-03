import Text from '@/components/ui/atoms/Text/Text';
import styles from './CheckoutStepper.module.css';

export interface CheckoutStep {
  label: string;
  completed?: boolean;
  active?: boolean;
}

export interface CheckoutStepperProps {
  steps: CheckoutStep[];
}

export default function CheckoutStepper({ steps }: CheckoutStepperProps) {
  return (
    <div className={styles.stepper}>
      {steps.map((step, index) => (
        <div
          key={step.label}
          className={`${styles.step} ${
            step.active ? styles.active : ''
          } ${step.completed ? styles.completed : ''}`}
        >
          <div className={styles.number}>{step.completed ? '✓' : index + 1}</div>

          <Text>{step.label}</Text>

          {index < steps.length - 1 && <div className={styles.line} />}
        </div>
      ))}
    </div>
  );
}
