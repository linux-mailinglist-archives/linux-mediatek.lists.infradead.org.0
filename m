Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1377F12E87
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 14:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eEOOczoKP0SR34RAs6o3hcVMz/0FboVUlsReeZnrcl8=; b=mM6nRwmhGTc7X9
	apCTX2sMgrEw3nrre4O7GUUXCGu8aNtCTGP37jn8+Y9rwmlIXf8StDzZWv9e8lfBL1K5y0Kr9Uoq6
	k2XyvFMnD/mwRzmjm7E+bsjXB3JvGG6kwDhZioDlbaSqeZRII00Lc/kphMp8NkK3965ymLP46hXUG
	5wd/bUtqjUng4AZXGshF1EfJwa/ttcXhom2s7l6Z0HGV2uXUzn17ooppXfZ3EAQMLKunpqf6mFQES
	ADlBj3/PcxDqkJpIQRz65WDJi0NSEmdxxFUSYuZbSQf5poVJua7TKYKcwWfhc9SIfeap9YZ0BrJJV
	yUfFtZtF9XXR4KR1EcRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXiY-0005fu-P4; Fri, 03 May 2019 12:55:10 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXiV-0004xn-S9
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 12:55:09 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43Cra0o131650;
 Fri, 3 May 2019 12:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=/EJcOtCKHzyP28w2BqK4Nm8RSbHZ1MiSLldUmj3B1uQ=;
 b=jFv2J2yl4Awq0vybuY/lRpX7TFepbXcWknMK9WpSaMYRpkkGPjJsho2mRx8cIu0wTWbK
 urtRsetJ+T56pfSwZU4t8X+z3fPjInw9EA1bmkutdavMHBjFTunW2bE81PiDsXy+Nu4o
 LoN9KJdPRIKNrvyJNeXI/NWWAe8ET+go86YB1YWmc60/rko4tdzmdn4lhQhCgUQDQ0Xe
 wTevNiTmJ2iKqSn0zb/WMXdtdi9NN1oBc7+2gO47GuOi/0nSdDXa/nbfYyhF1x+ExKG5
 YPDbQYVAP0kefCtJ7DGOJthsEBxfTu+Y+a2o9E9l7tGD6J/YuGNCqRNtNyOGl9xzWSAq hw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2s6xhyxh0u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 12:54:57 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43CrxGG127592;
 Fri, 3 May 2019 12:54:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2s7p8aak8w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 12:54:57 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x43CsqSS018138;
 Fri, 3 May 2019 12:54:52 GMT
Received: from mwanda (/196.104.111.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 May 2019 05:54:52 -0700
Date: Fri, 3 May 2019 15:54:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Felix Fietkau <nbd@nbd.name>, Ryder Lee <ryder.lee@mediatek.com>
Subject: [PATCH] mt76: Fix a signedness bug in mt7615_add_interface()
Message-ID: <20190502212341.GA31847@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905030081
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_055508_009308_1949E558 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The problem is that "mvif->omac_idx" is a u8 so it can't be negative
and the error handling won't work.  The get_omac_idx() function returns
-1 on error.

Fixes: 04b8e65922f6 ("mt76: add mac80211 driver for MT7615 PCIe-based chipsets")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 80e6b211f60b..8d7a47d1b205 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -77,11 +77,12 @@ static int mt7615_add_interface(struct ieee80211_hw *hw,
 		goto out;
 	}
 
-	mvif->omac_idx = get_omac_idx(vif->type, dev->omac_mask);
-	if (mvif->omac_idx < 0) {
+	idx = get_omac_idx(vif->type, dev->omac_mask);
+	if (idx < 0) {
 		ret = -ENOSPC;
 		goto out;
 	}
+	mvif->omac_idx = idx;
 
 	/* TODO: DBDC support. Use band 0 and wmm 0 for now */
 	mvif->band_idx = 0;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
