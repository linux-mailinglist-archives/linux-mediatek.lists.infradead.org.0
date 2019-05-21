Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651A62481D
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 08:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vi+1QggR1kz7BHA+2Qbxb+Q9GvD/4Z1KD/EyP/+NMMY=; b=tPiCK6gv0jVYTW
	6hv13n0BenTJ1ZLHEsS5BB0RzO8oVwNIL45MNJcTATmi2Tv5PndOBf0oCNhwpmHNVYZwqXo49FWNW
	38tSf9oKo5DaR4VCy9FfkFdLNu8N8Fv1+5pXcjU8ijIXnwDbMCIqGtoo+HsjWL10+MK5zHbdKn1xw
	ajD7bZyndhLldbWftO1/KYCHmcKL0/Dvis+qhKN1fnVZHzhIog/Pzkq26ZkQwoYzBueztvrxIK2DX
	M/PT/jlU2vlWcYKIePA+vys4Vm8tUkq7ZUEqmDMKkN3kV8aJsgUKIIYP8adzkRNXMBHW1hVlzibOX
	J7/AE+VjUO7JEhb9B1bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyLT-0003W5-Vn; Tue, 21 May 2019 06:33:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyLK-0003PI-St; Tue, 21 May 2019 06:33:48 +0000
X-UUID: 18f4a3ae4f704a9288435b256bc5a76b-20190520
X-UUID: 18f4a3ae4f704a9288435b256bc5a76b-20190520
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1663878573; Mon, 20 May 2019 22:29:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 23:29:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 14:29:45 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 14:29:45 +0800
Message-ID: <1558420185.660.9.camel@mtkswgap22>
Subject: RE: [PATCH v4 2/3] scsi: ufs: Introduce
 ufshcd_is_auto_hibern8_supported()
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Tue, 21 May 2019 14:29:45 +0800
In-Reply-To: <SN6PR04MB4925EAB455D857AEB055258FFC070@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1558361445-30994-1-git-send-email-stanley.chu@mediatek.com>
 <1558361445-30994-3-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925EAB455D857AEB055258FFC070@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 654E7C1331B3670E11854CE7A262AB6C908DCE4D8CDB3BB365F47B68D9F001742000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_233346_936474_BFA3DB07 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

On Tue, 2019-05-21 at 06:18 +0000, Avri Altman wrote:
> > 
> > ufshcd_is_auto_hibern8_supported() will be used elsewhere
> > in the driver, thus refactor it for preparation.
> You missed a couple of spots, e.g. in ufshcd_auto_hibern8_enable and in ufs-sysfs.

Yes...
Will re-factor them as well in next version.

> 
> Thanks,
> Avri

Thanks,
Stanley



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
