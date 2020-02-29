Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818AB174442
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Feb 2020 02:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGQwu0PL8sdO5HHcDX9ihqs5tZe6szz4w/RttChGaXs=; b=ILue6pkQNKIBo/
	79w11/bM5qYFOiLfIWaHJJK2PFYDiRnLyvpWazpBLt/Goi3dM6UnITR5XhS28eGOHoygw0SEGpKta
	Podjb5fMt4mUW6FcHqdyZ0n3Mo9qaP3A/5fV2Dj7ksBrpNStZBfcVrw5TyQnXXmSqwdner9VNftoE
	F/F6nQwaqGNYcj1rI+kZxRJh4SMK7oKLf5mrWvdTr4hlNG4/Q7TZzPgFIE3f5c8/xUttFqOwwtdBt
	8qVv4BYG85YcwVMposqSQYlbIL8wqLtf5Uos6ZZqYzYQJYHCq57VTZgnh5uDCONjtYclhL2H5wSxs
	gV2MiVJnXYLZTyrJW1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7r9K-0007vg-C7; Sat, 29 Feb 2020 01:42:38 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7r9G-0007vE-96; Sat, 29 Feb 2020 01:42:35 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T1bXAc065791;
 Sat, 29 Feb 2020 01:42:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=UCaZQzCibrp5i2NwfsLib4Z71x6Il8AQ8MzcZ2mUUYk=;
 b=wL4ybZdc+ba7eRS6S6OZjJGecIG2HsG0vDdBVlKs37aQZtJyMSi/grAq1Pc6wVfuPgdf
 3iWcy1LxqAalSUuu1O3mXzvdwE6gcNcDpRjUnFHsC34sJmw2WjGNGuS8q3LHeq/v8szM
 g1JBknmZoQ4Xi6Goaot6Eld7TkWEubMqiRAPE3tUhzXaPseONHqARK3AA+xEHoTrlCDL
 36UOBwbNXBimrosGsKn0skIeAvodZHrs2Iiu+oET0DiiIOGJM1ZpCtKcnhOUalrFCGo9
 grwWice2uINjQdZw2a6mf8fZr0nWpMa9tHyu1Q9oAyZ//K/ZM1lDLeTiMhH4you/BJpg UA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2ydcsnx6qe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 29 Feb 2020 01:42:20 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T1gJxw187800;
 Sat, 29 Feb 2020 01:42:20 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2yfd2v5eja-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 29 Feb 2020 01:42:19 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01T1gFSV017596;
 Sat, 29 Feb 2020 01:42:16 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Feb 2020 17:42:15 -0800
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v2 0/1] scsi: ufs: fix waiting time for reference clock
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200220134848.8807-1-stanley.chu@mediatek.com>
Date: Fri, 28 Feb 2020 20:42:11 -0500
In-Reply-To: <20200220134848.8807-1-stanley.chu@mediatek.com> (Stanley Chu's
 message of "Thu, 20 Feb 2020 21:48:47 +0800")
Message-ID: <yq18skm6ufg.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=959
 adultscore=0
 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002290008
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 impostorscore=0 clxscore=1011 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002290007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_174234_447813_8E36AFE9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 asutoshd@codeaurora.org, bvanassche@acm.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Stanley,

> This patchset adds waiting time for reference clock provided to UFS
> device in MediaTek UFS implementation.

Applied to 5.7/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
