import SearchFilterField from "@/components/ui/molecules/SearchFilterField/SearchFilterField";
import Text from "@/components/ui/atoms/Text/Text";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./SearchResultsHeader.module.css";

export interface SearchResultsHeaderProps {
  query?: string;
  resultCount?: number;
}

export default function SearchResultsHeader({
  query = "",
  resultCount = 0,
}: SearchResultsHeaderProps) {
  return (
    <header className={styles.header}>
      <div>
        <Heading level={1}>
          {query ? `Results for "${query}"` : "Search Results"}
        </Heading>

        <Text>{resultCount} results</Text>
      </div>

      <SearchFilterField />
    </header>
  );
}
