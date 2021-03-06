
package ru.log_inil.mc.minedonate.localData;

import java.util.Map;

public class DataOfMoneyProcessor {

	// Загружать
	public boolean load ;
	
	// Тип денег, должен быть равен тому, что прописывается в категории
	public String moneyType;
	
	// Класс реализующий AbstractMoneyProcessor
	public String className ;
	
	public String dbTable, dbIdColumn, dbNameColumn ;
	
	// Колонка с деньгами, которая должна в бд иметь значение по умолчанию
	public String dbMoneyColumn ;
	
	// Имя используемой базы
	public String dbLinkName ;
	
	// Использовать отдельную бд для чтения данных
	public boolean useOnlyReadDBForGetInformation ;
	public String dbOnlyReadLinkName ;
	
	// Процессор работает в обе стороны (т.е. совершена покупка в магазине, и со счета покупателя выполнен перевод на счет владельца магазина )
	public boolean isTwoSideProcessor ;
	
	// Регистрировать игрока если его нет
	public boolean registerUsersWhenNoExists ;
	
	// Первичные деньги аккаунта
	public int regMoney ;
	
	public Map < String, Object > xProperties ;

	public DataOfMoneyProcessor ( ) {
		
		load = true ;
		moneyType = "unknown" ;
		className = "?" ;
		registerUsersWhenNoExists = true ;
		regMoney = 0 ;
		
		useOnlyReadDBForGetInformation = false ;
		dbOnlyReadLinkName = "" ;
		
	}

    public DataOfMoneyProcessor ( boolean _load, String _mt, String _className, String _dbTable, String _dbIdColumn, String _dbNameColumn, String _dbMoneyColumn, String _dbLinkName, boolean _isTwoSideProcessor) {

    	this ( ) ;
    	load = _load ;
        moneyType = _mt ;
		className = _className ;
		dbTable = _dbTable ;
        dbIdColumn = _dbIdColumn;
        dbNameColumn = _dbNameColumn ;
        dbMoneyColumn = _dbMoneyColumn ;
		isTwoSideProcessor = _isTwoSideProcessor; ;
		dbLinkName = _dbLinkName ;
		
	}
	
    public DataOfMoneyProcessor ( boolean _load, String _mt, String _className, String _dbTable, String _dbIdColumn, String _dbNameColumn, String _dbMoneyColumn, String _dbLinkName, boolean _isTwoSideProcessor, Map < String, Object > _xProperties ) {

        this ( _load, _mt, _className, _dbTable, _dbIdColumn, _dbNameColumn, _dbMoneyColumn, _dbLinkName, _isTwoSideProcessor ) ;
		
        xProperties = _xProperties ;
        
	}
}
