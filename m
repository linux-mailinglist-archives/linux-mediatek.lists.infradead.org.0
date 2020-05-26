Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31E81AE792
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 23:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4R7fNciWaLc6KkiIXAlX8bBT5AmuEaVkdrpbWCfx8bA=; b=DMxn/QSVD8YPe2
	hKd1Cb93tnElFV/91Lyb9qwluwAzqtGtdrvZZad3kFodWoATiKESz0yteMzEPjZLTog1aySh8bRDM
	UaRho04jaMbuGTmVJeE3p6fmRKM2lZru0XOV2/DGbMdqZrjU7B3k72eqHWTE3qZiTD+6Z88kRm1xj
	6BdEd88cWGbwR9GZd9Arpq6guFznudDzTYsW5B4aAThSHHQcu/4M9WEq60mGyR/CD1MDxdk+u+TxL
	Wm/W/X8xjwKtYxDQ1hSSYwufmckSwH3JWIlXZxCg1BJuStdRI9997UyswNFntTKzWduyUg7PcKrW3
	L/ctDN+ddM6pW8VxSFQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPYXk-0008Ev-16; Fri, 17 Apr 2020 21:29:00 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPYXg-0008ED-9i; Fri, 17 Apr 2020 21:28:57 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03HLIKgx016831;
 Fri, 17 Apr 2020 21:28:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=ioRkr8UA3rZ8RZNxmbnIqzvkarX1kRih80H9E5siYQU=;
 b=iTI07E8SKS/cBHsKrg5tZlQLT9iHVI+NR5dxIsbDtQCck1/9gnMODqglqUNpzBEsDVm9
 I1FVDOieQodR6VHpWQEEGEK2250hSV75EOMAzz0dikSQ+WCXYBkfEPGFsf7ADHCKHpS4
 cXn11G0+Q9kH/IpCohMpxatnZD6zsJS9o2e68FDp6m3l/fbzzFgj7Zqt1/Qg6ocqLD4z
 Ged0iMLBzfMP0OwbQuHE1bSZF2nxV/mb7qmHKk7uYaQ9VhM9vP7tKRXte6O7Yi6IUxxs
 KyEqaOJSJzZQ3J9U5vWxhRvGg3qxSFv6M1cH8Rmhx9/qBiZ2/5RTZ5UQisUzJubp8Qlj oQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30dn961bvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Apr 2020 21:28:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03HLDKOp100481;
 Fri, 17 Apr 2020 21:26:44 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 30dn92860j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Apr 2020 21:26:44 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03HLQftr025383;
 Fri, 17 Apr 2020 21:26:41 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 17 Apr 2020 14:26:41 -0700
To: Can Guo <cang@codeaurora.org>
Subject: Re: [PATCH v2 1/1] scsi: ufs: full reinit upon resume if link was off
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1586844892-22720-1-git-send-email-cang@codeaurora.org>
Date: Fri, 17 Apr 2020 17:26:37 -0400
In-Reply-To: <1586844892-22720-1-git-send-email-cang@codeaurora.org> (Can
 Guo's message of "Mon, 13 Apr 2020 23:14:48 -0700")
Message-ID: <yq1d085olbm.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9594
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004170155
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9594
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 clxscore=1015
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004170155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_142856_421282_CC557915 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>,
 rnayak@codeaurora.org, saravanak@google.com, linux-scsi@vger.kernel.org,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, nguyenb@codeaurora.org,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 salyzyn@google.com, Alim Akhtar <alim.akhtar@samsung.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>, kernel-team@android.com,
 Bart Van Assche <bvanassche@acm.org>, hongwus@codeaurora.org,
 asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Can,

> During suspend, if the link is put to off, it would require a full
> initialization during resume. This patch resets and restores both the
> host and the card during initialization, otherwise, host only reset
> and restore may fail occasionally.

Applied to 5.8/scsi-queue, thanks!

> Signed-off-by: Asutosh Das <asutoshd@codeaurora.org>
> Signed-off-by: Can Guo <cang@codeaurora.org>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
> Acked-by: Stanley Chu <stanley.chu@mediatek.com>
>
> Change since v1:
> - Incorporated Alim's comments.
>
> ---
>  drivers/scsi/ufs/ufshcd.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Don't forget to put the changelog after the "---" separator.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
