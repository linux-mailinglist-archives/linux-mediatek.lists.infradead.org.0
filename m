Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47AE11FD4E
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Dec 2019 04:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrD079sDxE/ZDpGqWlQ1HSSU0a9ox4a3MAYw1cA6a3c=; b=bTY9mUN3nt6KfF
	EqbIPJvPFhpAimVWYK1xRDZSQCFbDsaGlOIqg2r3m2NZoIWnQ2cC9L8cmgvjfdIjULrrTL4S5P+ba
	79leeWd5Q+9zi5g5JKaey8eeTdCl8L9KbJ0g8xkEMk6sXo0aWK1aDLQAsnJjdFwAktIKhuMb+ZefS
	BXHHoYMG9J0OZq6nYrK8UD2bG3IEQeeDw3U1NiwkewElF5UfZKeIBwrxl/g5Fnwv6np9LqAR2AOsg
	vnu0a5qHg4E48Knq1pNm5dxlgdpsAR2E4m18++FILW8EkF/OvfyVhbO8BgnrDGYzAmTqKSFtnJVyF
	wL1PVQcf2hWr0azwN94A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighRN-0000Kc-F6; Mon, 16 Dec 2019 03:53:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighRK-0000K5-41; Mon, 16 Dec 2019 03:52:59 +0000
X-UUID: 21a15f03e8424bf39cf7f9206eed6a6b-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5K/XbBKs8iA6ab+03BUBztdPLrJv72ygYwkxrqAIQ9U=; 
 b=LtKrPR5oENDw4gxZ7RkF68VJ2n7Q3gw/yPGjjiRBMx5LHOEaQpRaV05lLIPenBkf3EPwQi79RrWSd3REikAwi+EZRDk3XBFMGXXKLvG4ePA8cAODuxKYiCL7Ceqtkr4cViVd47b243sHN7JJ2ufMaZrLfQLkr6VV/BHVlFlhGbI=;
X-UUID: 21a15f03e8424bf39cf7f9206eed6a6b-20191215
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1855005230; Sun, 15 Dec 2019 19:52:53 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 19:53:07 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 11:51:41 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Dec 2019 11:52:51 +0800
Message-ID: <1576468370.13056.2.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/2 RESEND] soc: mediatek: add header for SiP service
 interface
From: Stanley Chu <stanley.chu@mediatek.com>
To: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 <f.fainelli@gmail.com>, <matthias.bgg@gmail.com>
Date: Mon, 16 Dec 2019 11:52:50 +0800
In-Reply-To: <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
References: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
 <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 89A95AE056A1C55C4F5ED8FC96F4CCD94C675532D4D860D6EF86D25D953A31ED2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195258_167170_467ADE35 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>, Leon
 Chen =?UTF-8?Q?=28=E9=99=B3=E6=96=87=E9=8F=98=29?= <Leon.Chen@mediatek.com>,
 Andy Teng =?UTF-8?Q?=28=E9=84=A7=E5=A6=82=E5=AE=8F=29?=
 <Andy.Teng@mediatek.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Matthias and Florian,

Could you please help review this revised v2 patch ?

Or please advise if any expert could help ?

Thanks so much.
Stanley

On Mon, 2019-12-16 at 11:48 +0800, Stanley Chu wrote:
> Add a header for the SiP service interface in order to access
> the UFSHCI controller for secure command handling in MediaTek Chipsets.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
