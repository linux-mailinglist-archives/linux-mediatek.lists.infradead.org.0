Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC85366351
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 03:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2quHflJxiYC9F++KkjtKricB5tvkwcRTd5keZGAbdM=; b=HAHhrQamUYoZF1
	0MokyBSLeiGzE9JTCrOS1v6ivfy7FxYI7V3zYvQQ1Rm/oA8+GbyD7CgI75gBdmjnOo7pibH40BQCE
	vccz4D4luWF2QFSxlerhMcpSFjZsmDJVWg61D1m3kTKxBMpelA+nnce0GniWP24dGpb//GYcyuS0U
	PH1t5YX5nZvtx0kKAoRLQlw1OTALFXm11vydQGQlT41GML6TvyDKXu1thBYMS5iI4HIk3KYKOj3fA
	2YM08yOWOr+Gz3vqemyEtDexldSPl/cN1pnEt/jwMRp/u8Qb/Hal14yQ5j35KP0yZCp0Za5vOXnf+
	tSmBFWY5SIM41Q9/SDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlkEw-0005SJ-MX; Fri, 12 Jul 2019 01:20:46 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlkEr-0005Rn-1W; Fri, 12 Jul 2019 01:20:42 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6C1JDGt013624;
 Fri, 12 Jul 2019 01:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=+//WNuluqSI6WiOF/I/qDMQbgbH1vjaZHXNjyAnO/tc=;
 b=eqRE1tzkwbrz0qe4DXsllVohgMv9+jc1WEoMBAmIHxwf7LAdcnZvlLp3dhvEKcFnAqDk
 WOWoqxF+Qg+mYKrVtAnMDdb/lE1TZFp++U1U0N5ORWy659gzh3tuesfmPk/JKU0pIRuH
 cCL4U9uh+yA+iSXepU1hrV/6+Z4YkK3zSqjgDMi2P2mN31EBs4lOPaQaeaRJXUR8p8Eo
 jsHE62yx6gJekCAfo3Ye0kmHAvwTAGQf2qXPpjNa3fvm1Tsz7pdw9e9RtKBsesvxh7fg
 GZC0EZMgZloB7oXh92eZ0o4j7aY1w64GOXoU/JJc9LYahsML/qMUcQ6s1ewsr+rj2jBH Hg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2tjkkq2y9q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jul 2019 01:20:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6C1Hpf1144121;
 Fri, 12 Jul 2019 01:20:25 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2tn1j1va91-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jul 2019 01:20:25 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6C1KMqj030642;
 Fri, 12 Jul 2019 01:20:22 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 11 Jul 2019 18:20:22 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v3 0/4] scsi: ufs: Provide fatal and auto-hibern8 error
 history
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
Date: Thu, 11 Jul 2019 21:20:18 -0400
In-Reply-To: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Wed, 10 Jul 2019 21:38:17 +0800")
Message-ID: <yq1h87s6obx.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9315
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=766
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907120015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9315
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=812 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907120015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_182041_175320_49DA93A7 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sthumma@codeaurora.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, marc.w.gonzalez@free.fr, subhashj@codeaurora.org,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 ygardi@codeaurora.org, alim.akhtar@samsung.com, andy.teng@mediatek.com,
 matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Stanley,

> This patchset provides more information of fatal errros and
> auto-hibern8 errors to improve debugging by keeping their error
> history as completed as possible.

Applied to 5.4/scsi-queue. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
