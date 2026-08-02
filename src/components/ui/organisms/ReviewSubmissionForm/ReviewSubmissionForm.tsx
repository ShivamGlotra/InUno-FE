import FormField from "@/components/ui/molecules/FormField/FormField";
import TextArea from "@/components/ui/atoms/TextArea/TextArea";
import Select from "@/components/ui/atoms/Select/Select";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./ReviewSubmissionForm.module.css";

export default function ReviewSubmissionForm() {
  return (
    <form className={styles.form}>
      <FormField label="Rating" required>
        <Select
          options={[
            { label: "5 Stars", value: "5" },
            { label: "4 Stars", value: "4" },
            { label: "3 Stars", value: "3" },
            { label: "2 Stars", value: "2" },
            { label: "1 Star", value: "1" },
          ]}
        />
      </FormField>

      <FormField label="Review" required>
        <TextArea placeholder="Write your review..." />
      </FormField>

      <Button>Submit Review</Button>
    </form>
  );
}
