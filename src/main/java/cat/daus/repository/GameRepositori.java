package cat.daus.repository;

import java.util.List;
//import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.jpa.repository.JpaRepository;

import cat.daus.model.Game;

//para Mongo
//public interface GameRepositori extends MongoRepository<Game, Integer> {

//para mySql
public interface GameRepositori extends JpaRepository<Game, Integer> {
	List<Game> findGamesByUsuariId (int usuariid);
	boolean existsGamesByUsuariId(int usuariid);
	int deleteGamesByUsuariId (int usuariid);
}
