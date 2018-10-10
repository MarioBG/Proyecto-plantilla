
package services;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import repositories.ShoutRepository;

@Transactional
public class ShoutService {

	@Autowired
	private ShoutRepository	ShoutRepository;


	public Map<String, Double> computeStatistics() {
		Map<String, Double> result;
		double countAll, countShort, countLong;

		countAll = this.ShoutRepository.countAllShouts();
		countShort = this.ShoutRepository.countShortShouts();
		countLong = this.ShoutRepository.countLongShouts();

		result = new HashMap<String, Double>();
		result.put("count.all.shouts", countAll);
		result.put("count.short.shouts", countShort);
		result.put("count.long.shouts", countLong);

		return result;
	}

}
