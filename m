Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1C714C8ED
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 Jan 2020 11:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVsm5hFKidr5l+VENjD5nRPMDTYXk+AdxNSpT6o8rh8=; b=sCHWNydzTyoA/T
	VCVyq2/oXf2obXqF8LhZkEgrj2R+VUMYLEFoM6zisYrNhQSKmk3KTgvJ42EE3Bv2bRydoW+24UGb/
	WgGrP2diS4JxMdkAtRPh44gQteDvwnrKeuMtIlni76W1xij36Jiml/UchZbavj7mq7+NIbipUuwk3
	iOEkH8GCDU5S00c3kDJ+AHyEYxTuADkoZLKXTytxlpzxS+cBNLGes92xNG2QA9+XKZMup2APDUlSn
	0x7CdWfg7MqgpB4389cWngRYLpciYo/ijVOfWHpBYzObfV7mdClDKRGBj7spZnakHhpVaI1Y8RhGt
	YEd5Z3pvaziPTbTidX1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwkrh-0001QM-Lq; Wed, 29 Jan 2020 10:46:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwkrd-0001Pn-Tq; Wed, 29 Jan 2020 10:46:31 +0000
X-UUID: dc55336f00074f529d4c7aacb4b97de7-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Yt581FabJCvS7KYli29oSxtfGgARonQD9rLsBaD4O/A=; 
 b=MgUrR9fbsNx5Yp09f5XqZRx52b1GN/RVEx+Gkg0xBU5BbKgPmk9yYbRBeuL7I7eD9GM/8RK2aTCLFGnxw8Fjm4ODU/5LisLxrp4c+2JXWTA47VWIjFhfrsn6S5zorPDf/EXWYCdeI4bdMlhrShfXd3uzFsPkRCPoi7lt9Wt52NI=;
X-UUID: dc55336f00074f529d4c7aacb4b97de7-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 831773861; Wed, 29 Jan 2020 02:46:26 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 02:46:46 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 18:44:50 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 Jan 2020 18:46:17 +0800
Message-ID: <1580294770.15794.1.camel@mtksdccf07>
Subject: Re: [PATCH v3 3/4] scsi: ufs: fix Auto-Hibern8 error detection
From: Stanley Chu <stanley.chu@mediatek.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 29 Jan 2020 18:46:10 +0800
In-Reply-To: <20200129075225.GA3774452@kroah.com>
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
 <20200129073902.5786-4-stanley.chu@mediatek.com>
 <20200129075225.GA3774452@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_024629_968176_5CA58D97 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Greg,

On Wed, 2020-01-29 at 08:52 +0100, Greg KH wrote:

> > Fixes: 8217444 ("scsi: ufs: Add error-handling of Auto-Hibernate")
> 
> This should be:
> Fixes: 821744403913 ("scsi: ufs: Add error-handling of Auto-Hibernate")

Thanks for remind. I'll resend this patch with updated tag.

Stanley

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
