Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3E1DB2C3
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 14:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E8Ba2mEXDJBXHQnOrik+BN92EQ7XpqTL7QQKeuCeuMw=; b=AKqbZpStLMQ48O
	l+3B3VskeZH3reSMvuWbpZn/anSPc0z2n38n86Fex/fnmRxLt6/iuWAnwXwbTK5OETvFlNu6aGKvp
	rokhiQAjxcF8PeCuIiByQL2axnazO7BurLzZ0KMfT8jZw/51I9EWVGUjJ06imSPIpGihkmeGTAQGW
	P/zaexAdSYvUo0X2URdMhLRNEPoFfXUlS/eVZPEIn6vHOtdXU6GhLGBUblasjrDa3j5oRdeYZQwZT
	IDxq+cyyO2tFztXh1rjYxE5lOVw0DDsyFwv350/TD+aNUEjzQGiWOVHP62qdxGSKhauLJ24BqqYV5
	cBbe2IVQNeeI8C7SzFWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNYT-0001N8-DW; Wed, 20 May 2020 12:10:37 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNYQ-0001Mi-5M
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 12:10:35 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KC7Qr2191920;
 Wed, 20 May 2020 12:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=irXy5qR4OqDLQFwI1T4hA3X4qeNb8B2ztZ5Le3JbTRg=;
 b=w+/y6zSLgHc/ranXjBAkzKFcV/xGO4BzuFZ+eGYi3OzoFc7PxVitHKtiRJ1euHzIcvpu
 hAA+u86bT4Jq7sfiWXADQaaLuyTV9ptCeB8HmbSa3egDMpHDkJTXCMTRFTjyOsYdOWoh
 rXrguINwI39YwZ4kRo2gEURQ0TmSTLtIDpoc64p/lUC+pgMScnntlo2j+wYFfjFJFcCg
 kJwmdE2gnf+dbGNRgsMAjyDP6pFzKR9HV4uQfoUu7FqNUpGlI1Wf3OM7XAPO0udr5/SH
 t2fAGKdK/RAIk0xCkOBKFCXXPQCDBdH/AyDN2oMMMKg4MdBNZVL6/QNGpredxpoIUTa2 HA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31501r98a6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 12:10:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KC8Sid161806;
 Wed, 20 May 2020 12:08:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 314gm6yd7c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 12:08:32 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04KC8Vkx007064;
 Wed, 20 May 2020 12:08:32 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 05:08:31 -0700
Date: Wed, 20 May 2020 15:08:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ryder.lee@mediatek.com
Subject: [bug report] mt76: add mac80211 driver for MT7915 PCIe-based chipsets
Message-ID: <20200520120826.GJ172354@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=951
 adultscore=0 phishscore=0 mlxscore=0 spamscore=0 suspectscore=3
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 mlxlogscore=972 clxscore=1015 priorityscore=1501 cotscore=-2147483648
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 suspectscore=3 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_051034_334638_233529C8 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
 [156.151.31.85 listed in wl.mailspike.net]
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

	drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1576 mt7915_mcu_add_smps()
	error: 'wtbl_hdr' dereferencing possible ERR_PTR()

drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
  1558  int mt7915_mcu_add_smps(struct mt7915_dev *dev, struct ieee80211_vif *vif,
  1559                          struct ieee80211_sta *sta)
  1560  {
  1561          struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
  1562          struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
  1563          struct wtbl_req_hdr *wtbl_hdr;
  1564          struct tlv *sta_wtbl;
  1565          struct sk_buff *skb;
  1566  
  1567          skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
  1568                                         MT7915_STA_UPDATE_MAX_SIZE);
  1569          if (IS_ERR(skb))
  1570                  return PTR_ERR(skb);
  1571  
  1572          sta_wtbl = mt7915_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
  1573  
  1574          wtbl_hdr = mt7915_mcu_alloc_wtbl_req(dev, msta, WTBL_SET, sta_wtbl,
                ^^^^^^^^
No error handling.

  1575                                               &skb);
  1576          mt7915_mcu_wtbl_smps_tlv(skb, sta, sta_wtbl, wtbl_hdr);
  1577  
  1578          return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
  1579                                         MCU_EXT_CMD_STA_REC_UPDATE, true);
  1580  }

regards,
dan carpenter

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
