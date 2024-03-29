
package repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Shout;

@Repository
public interface ShoutRepository extends JpaRepository<Shout, Integer> {

	@Query("select count(s) from Shout s")
	public Long countAllShouts();

	@Query("select count(s) from Shout s where length(s.text) <= 25")
	public Long countShortShouts();

	@Query("select count(s) from Shout s where length(s.text) > 25")
	public Long countLongShouts();
}
