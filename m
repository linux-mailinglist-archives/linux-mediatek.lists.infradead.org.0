Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41B51DB29B
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 14:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/D+koJBRKBwdRoN9bH7oShfwkwpZRKB9jFfzT7Qx0dw=; b=d7OJxyTNLD18wY
	Wnm0Y73igxzaVSoyM3jx4J+BpBQ8Cx9PDI0hfrcdIKEGFXC1rmfV1+tnrRASUer9P9zUjbhMaCUKD
	c7GXp3Xj91RQPkXJCrvGL0tgJqaXZEw368pcWC72DtQooIvG2sk9TdDt637i4qqqeU4Z+ht/JNeoG
	PFmSx/OUjPSgfVc6VPwVO1ZnCfLJBx4QjNcHC9t2jT4omW8ybT5rfFoEGpY2XEZsfgcJfQ2lXsfAw
	LATjYVVytlOmr5tRjaeM3V5LHawH5gMhjXojL/wHZj+Y858KE8tOg0/VcoSXrBTW32C0amuNvZVQt
	/TfqiFYkIWNzg8O/UdDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNQf-0003k1-LM; Wed, 20 May 2020 12:02:33 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNQb-0003jX-6l
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 12:02:31 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KC1oLc103890;
 Wed, 20 May 2020 12:02:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=SNby9fgoJ8XhIsJqo7kg8+yrabKm0/Z6HRPzdv/h0TI=;
 b=EeEkXKG6/UGvgWqXQJCy1GNY2q1eklNAFcjoDDz9CShz7tCj1aiR+44KexGBRdg3IRDx
 A+eSVGd7isFacH7bYuXzOaUBd9sMBOfFvM00EkDqer2KzD8LPR8KKIuVFEUcPs2gRmRa
 g+ttaZU7UP1JpOhv/zqI5ulF5ec2EJmzuBk1/ULidSQ0CZkH+51AK45Wq0hKbKc2iDpx
 Eql1mB81m2QQGojqB7IIg3HxOmZN+FP5qdHcuUDHdtTMJHv7eE2oIlCUarRK2jASRCBa
 dJnMPz4LAlP+n3ct0mOOic3/I0S5/be9uynecujQDH8FFG1xcJTG+9/wlaLI71QOk45z Ow== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31284m2pap-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 12:02:24 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KBr9D8064055;
 Wed, 20 May 2020 12:02:23 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 3150205sbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 12:02:23 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04KC2LZY015080;
 Wed, 20 May 2020 12:02:22 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 05:02:21 -0700
Date: Wed, 20 May 2020 15:02:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ryder.lee@mediatek.com
Subject: [bug report] mt76: add mac80211 driver for MT7915 PCIe-based chipsets
Message-ID: <20200520120216.GC172354@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 mlxlogscore=794
 adultscore=0 bulkscore=0 suspectscore=3 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=815
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005200105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_050229_336848_5772C883 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, Ryder Lee <ryder.lee@mediatek.com>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Ryder Lee,

The patch e57b7901469f: "mt76: add mac80211 driver for MT7915
PCIe-based chipsets" from Apr 25, 2020, leads to the following static
checker warning:

	drivers/net/wireless/mediatek/mt76/mt7915/mac.c:1303 mt7915_mac_sta_stats_work()
	warn: test_bit() takes a bit number

drivers/net/wireless/mediatek/mt76/mt7915/mac.c
  1299  
  1300                  stats->jiffies = jiffies;
  1301          }
  1302  
  1303          if (test_and_clear_bit(IEEE80211_RC_SUPP_RATES_CHANGED |
  1304                                 IEEE80211_RC_NSS_CHANGED |
  1305                                 IEEE80211_RC_BW_CHANGED, &stats->changed))
                                       ^^^^^^^^^^^^^^^^^^^^^^^
These are like BIT(0), BIT(1) but the test_and_clear_bit() argument is
supposed to be 0, 1 etc...  It's a double left shift to say BIT(BIT(1)).


  1306                  mt7915_mcu_add_rate_ctrl(dev, vif, sta);
  1307  
  1308          if (test_and_clear_bit(IEEE80211_RC_SMPS_CHANGED, &stats->changed))
                                       ^^^^^^^^^^^^^^^^^^^^^^^^^
I'm not sure why these didn't generate a warning...  :/  Probably a
life lesson there that you should never rely on software to work as
expected.

  1309                  mt7915_mcu_add_smps(dev, vif, sta);
  1310  
  1311          spin_lock_bh(&dev->sta_poll_lock);
  1312          if (list_empty(&msta->poll_list))
  1313                  list_add_tail(&msta->poll_list, &dev->sta_poll_list);
  1314          spin_unlock_bh(&dev->sta_poll_lock);


regards,
dan carpenter

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
