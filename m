Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E24202124
	for <lists+linux-mediatek@lfdr.de>; Sat, 20 Jun 2020 05:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSBB5MMtoKs7UrZwT2pT/v8a8jfMXuS9FNccVKIx2sY=; b=ak7Bh7YgzTfCm/
	0WvWl/kPjHSLnOohg5scejxu48Kq4pOw+2x3kftG7j2zpDnkIkFgSI4bMu6/aKSwviq3SlE9mnyH3
	sz07aObZLDYZDmntB023SKIBsB+YC8fRsaWxMIL/bnYghbhU2anfIi/8C79zSAOQISGhW23WusumP
	JeNERaOpaw2g02na/gcDvsoQAaLkLpg8YAwWuZe5KMuqsWnCkfn2xR4kONs5h6JRBW1JpTqATCMZO
	CEzwFp45x24eoKPtNebvUIhRP18djJVIMMqwETJS9kurZY+Y+FGVImbLaXhb0wOeiQ+8Ul98LxgvI
	iQu+xXm4CWERM6euEsHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUfP-0002IB-BG; Sat, 20 Jun 2020 03:59:43 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUfM-0002Hi-6p; Sat, 20 Jun 2020 03:59:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05K3xYGG069386;
 Sat, 20 Jun 2020 03:59:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=jCH3I8fpRAneS91Ia94tA1cV8cpC1hPLFvD4x1EGC0k=;
 b=QvlXEEss6T6r9k7y0sfcxvKYyepruSnUGRqIoK9/XJtFSLs1IsxQIjS69RSblTNsEGwJ
 Pu6HKtZL+eixxjGe9i8SrbSscHYWUUDlt7SkL5ShyCD4nS8IWusT7RFGqVK+rMUjnE4a
 Z3Zy7iKnDvaufjGPag6kxCfwCg4OW/VlR80eIgjk/Ph4jiW/WLA1x/wZ2kcTPH2zPadI
 /UhJQwxGetGZsuW+3hnJi2eJ4gKepn8EODjg7HU/bcVIz8+uybD4OLHMwGL1U328LP61
 RcgaaO1Op12eJa+pkqDrTaIOQc+X0kRwlYzOwyW9m8LIko5o0OSnxNu0Uw9jU7NtP9AU Jg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 31s9vqr37g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 20 Jun 2020 03:59:34 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05K3vT10097770;
 Sat, 20 Jun 2020 03:59:34 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 31sa8ykcyf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 20 Jun 2020 03:59:33 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05K3xTn1023442;
 Sat, 20 Jun 2020 03:59:29 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 20:26:46 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: alim.akhtar@samsung.com, Stanley Chu <stanley.chu@mediatek.com>,
 jejb@linux.ibm.com, avri.altman@wdc.com, linux-scsi@vger.kernel.org,
 asutoshd@codeaurora.org
Subject: Re: [PATCH] scsi: ufs-mediatek: Make ufs_mtk_wait_link_state as
 static function
Date: Fri, 19 Jun 2020 23:26:38 -0400
Message-Id: <159262354733.7800.6869131850805388311.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616095120.14570-1-stanley.chu@mediatek.com>
References: <20200616095120.14570-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006200026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1015
 malwarescore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=999 mlxscore=0 phishscore=0 cotscore=-2147483648 spamscore=0
 adultscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006200026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_205940_336989_EA9C515E 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
Cc: bvanassche@acm.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 peter.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 17:51:20 +0800, Stanley Chu wrote:

> Fix build warning reported by kernel test robot:
> Make ufs_mtk_wait_link_state() as static functon.
> 
> Warning:
> >> drivers/scsi/ufs/ufs-mediatek.c:181:5: warning: no previous prototype
> >> for 'ufs_mtk_wait_link_state' [-Wmissing-prototypes]

Applied to 5.9/scsi-queue, thanks!

[1/1] scsi: ufs-mediatek: Make ufs_mtk_wait_link_state static
      https://git.kernel.org/mkp/scsi/c/9a3cd470f8e3

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
