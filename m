Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD17194EB7
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Mar 2020 03:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zw7Kr1eVMrbkEEia28kisSFU/7etOJ/jAJ8hapCunr8=; b=XNigzm1o4QgjPq
	KrV7XSOANUt8+3SHYFLxc80XCGJg1kfe2VFV6U7HHEptejC2356HIrJ4RcjNw8EAAlHPHpMHsIqsp
	lgntZ/+k3jz9Og8B8MVTs/KKIN0tvM8cQML7aIdJMP7/qGEMtYb4OxTbu5TGv6nmSAnVOHArNrJ+6
	P+7A+77/rew6s/qkML7kPxbvSYIWfojyp66JnIeJc54A8O0F70jBGpQcvIUpO8U01grEoXmJE7NQZ
	NEZoWloTCyjLx6qFYSnRhDY9yYcnPS2CBhzNXqOJTsMiSQYsNvbtY/M762aivDc5TUMlNIgra4+e7
	sBNUCqY+FNayux6awvAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHeRJ-0006lh-94; Fri, 27 Mar 2020 02:09:41 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHeRG-0006l5-9Q; Fri, 27 Mar 2020 02:09:39 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R29O4R093133;
 Fri, 27 Mar 2020 02:09:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=rxzaK+xiGUSL37btO1mXcRHCm66XoUtPIcvuddLU4dQ=;
 b=CZcI1dG2O5gWFo/ZIY08LAIe3NF1aL+GAIVKf1khvwpEMexJiuqgTUWkhxJwY2TOgrdY
 NVyv3M1VIOgn829o6/TTJjs/cfJj3PYExNAixWXcA8qKZlWg/E/1Li6UdGmgyxwMdo+m
 /gCIZ8p/Rc2JtjFEzSPR9VUXcsPl3Efv7UNZ3UtJM6WVQS2BdSfkCNZ0wFIk07zIagUs
 IHSbZf9ThXISb2+y5YTus0EsOR6MWyVP7WzWLJnV4Xk0OeEBeMy5waucBGXjL+Cf3g03
 zkMhnIBWipd8xcx9cORyDISacBVHZNDMdn4pH4H54BvS1vPBEU6Xr+Jg+kfa4H+vpv/R jw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2ywavmjx64-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 27 Mar 2020 02:09:24 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R28xkD052520;
 Fri, 27 Mar 2020 02:09:23 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 3006r9gemy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 27 Mar 2020 02:09:23 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02R29K5N022279;
 Fri, 27 Mar 2020 02:09:20 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 26 Mar 2020 19:09:17 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v7 0/7] scsi: ufs: some cleanups and make the delay for
 host enabling customizable
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200318104016.28049-1-stanley.chu@mediatek.com>
Date: Thu, 26 Mar 2020 22:09:12 -0400
In-Reply-To: <20200318104016.28049-1-stanley.chu@mediatek.com> (Stanley Chu's
 message of "Wed, 18 Mar 2020 18:40:09 +0800")
Message-ID: <yq1y2rmeegn.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=996 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003270015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1011 impostorscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_190938_414284_7686B2AD 
X-CRM114-Status: UNSURE (   9.80  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, martin.peter~sen@oracle.com,
 cang@codeaurora.org, peter.wang@mediatek.com, alim.akhtar@samsung.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
 asutoshd@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Stanley,

> Stanley Chu (7):
>   scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc()
>   scsi: ufs: use an enum for host capabilities
>   scsi: ufs: introduce common and flexible delay function
>   scsi: ufs-mediatek: use common delay function for required places
>   scsi: ufs: allow customized delay for host enabling
>   scsi: ufs: make HCE polling more compact to improve initialization latency
>   scsi: ufs-mediatek: customize the delay for host enabling

Applied to 5.7/scsi-queue. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
