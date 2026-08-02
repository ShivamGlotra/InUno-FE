import AddressFormRow from "@/components/ui/molecules/AddressFormRow/AddressFormRow";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./AddressBook.module.css";

export interface AddressBookProps {
  onSave?: () => void;
}

export default function AddressBook({
  onSave,
}: AddressBookProps) {
  return (
    <section className={styles.container}>
      <h2 className={styles.title}>Address Book</h2>

      <div className={styles.form}>
        <AddressFormRow
          label="Street Address"
          placeholder="Enter street address"
          required
        />

        <AddressFormRow
          label="City"
          placeholder="Enter city"
          required
        />

        <AddressFormRow
          label="Postal Code"
          placeholder="Enter postal code"
          required
        />

        <Button onClick={onSave}>
          Save Address
        </Button>
      </div>
    </section>
  );
}
