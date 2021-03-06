package com.youhua.dao.impl;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youhua.bean.energyreport.Orgenergyaccount;
import com.youhua.dao.OrgenergyaccountDAO;

/**
 * @see com.youhua.bean.energyreport.Orgenergyaccount
 * @author MyEclipse Persistence Tools
 */

public class OrgenergyaccountDAOImpl extends HibernateDaoSupport implements OrgenergyaccountDAO {
	private static final Logger log = LoggerFactory
			.getLogger(OrgenergyaccountDAOImpl.class);
	// property constants
	public static final String ORG_ID = "orgId";
	public static final String ORG_NAME = "orgName";
	public static final String INDEX_NAME = "indexName";
	public static final String METER_UNIT = "meterUnit";
	public static final String COLLECT_CODE = "collectCode";
	public static final String JANUARY = "january";
	public static final String FEBRUARY = "february";
	public static final String MARCH = "march";
	public static final String APRIL = "april";
	public static final String MAY = "may";
	public static final String JUNE = "june";
	public static final String JULY = "july";
	public static final String AUGUST = "august";
	public static final String SEPTEMBER = "september";
	public static final String OCTOBER = "october";
	public static final String NOVEMBER = "november";
	public static final String DECEMBER = "december";
	public static final String RECORD_YEAR = "recordYear";
	
	public List<Integer> initParam(String orgid) {
		// TODO Auto-generated method stub
		String hql = "select distinct recordYear from Orgenergyaccount as model where model.orgId = ?";
		return getHibernateTemplate().find(hql, orgid);
	}

	protected void initDao() {
		// do nothing
	}

	public void save(Orgenergyaccount transientInstance) {
		log.debug("saving Orgenergyaccount instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Orgenergyaccount persistentInstance) {
		log.debug("deleting Orgenergyaccount instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Orgenergyaccount findById(java.lang.Long id) {
		log.debug("getting Orgenergyaccount instance with id: " + id);
		try {
			Orgenergyaccount instance = (Orgenergyaccount) getHibernateTemplate()
					.get("com.youhua.bean.Orgenergyaccount", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Orgenergyaccount instance) {
		log.debug("finding Orgenergyaccount instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Orgenergyaccount instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Orgenergyaccount as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOrgId(Object orgId) {
		return findByProperty(ORG_ID, orgId);
	}

	public List findByOrgName(Object orgName) {
		return findByProperty(ORG_NAME, orgName);
	}

	public List findByIndexName(Object indexName) {
		return findByProperty(INDEX_NAME, indexName);
	}

	public List findByMeterUnit(Object meterUnit) {
		return findByProperty(METER_UNIT, meterUnit);
	}

	public List findByCollectCode(Object collectCode) {
		return findByProperty(COLLECT_CODE, collectCode);
	}

	public List findByJanuary(Object january) {
		return findByProperty(JANUARY, january);
	}

	public List findByFebruary(Object february) {
		return findByProperty(FEBRUARY, february);
	}

	public List findByMarch(Object march) {
		return findByProperty(MARCH, march);
	}

	public List findByApril(Object april) {
		return findByProperty(APRIL, april);
	}

	public List findByMay(Object may) {
		return findByProperty(MAY, may);
	}

	public List findByJune(Object june) {
		return findByProperty(JUNE, june);
	}

	public List findByJuly(Object july) {
		return findByProperty(JULY, july);
	}

	public List findByAugust(Object august) {
		return findByProperty(AUGUST, august);
	}

	public List findBySeptember(Object september) {
		return findByProperty(SEPTEMBER, september);
	}

	public List findByOctober(Object october) {
		return findByProperty(OCTOBER, october);
	}

	public List findByNovember(Object november) {
		return findByProperty(NOVEMBER, november);
	}

	public List findByDecember(Object december) {
		return findByProperty(DECEMBER, december);
	}

	public List findByRecordYear(Object recordYear) {
		return findByProperty(RECORD_YEAR, recordYear);
	}

	public List findAll() {
		log.debug("finding all Orgenergyaccount instances");
		try {
			String queryString = "from Orgenergyaccount";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Orgenergyaccount merge(Orgenergyaccount detachedInstance) {
		log.debug("merging Orgenergyaccount instance");
		try {
			Orgenergyaccount result = (Orgenergyaccount) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Orgenergyaccount instance) {
		log.debug("attaching dirty Orgenergyaccount instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Orgenergyaccount instance) {
		log.debug("attaching clean Orgenergyaccount instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static OrgenergyaccountDAOImpl getFromApplicationContext(
			ApplicationContext ctx) {
		return (OrgenergyaccountDAOImpl) ctx.getBean("OrgenergyaccountDAO");
	}
}