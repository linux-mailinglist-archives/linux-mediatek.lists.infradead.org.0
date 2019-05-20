Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFC522B72
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 07:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSDZvPF/Ume2DGEDkJwJJBsK312p/yhJPBsaNHJ8yd0=; b=mqXBHakojuF0H+
	Jx7xaA5v5+v+CxZFvs/Au4wPmSDF8tTNphdZ/Lva62YrFovbB8cC8rUYI/v/b472bFx7qE/7DBIji
	YsDchKgeEOi6NwMIQeamYZtBsmEuW8mZqRn0v3NN0ofYkozKbyWS7WUhPmGuN3dUtckL7XhBvgs4V
	AkssZh65VG3P8nzE/haWuNin5jm27GwESU14NUrTG+vtlQJbGC56RGSlcyEGZfoSkIwaB/fOya8WN
	Y9sd3IFSWNKv4kDDVlzfU6d1RPpwD2Ts1e0U3TbmLuCNj1ElKhshCXgigJIDnG/NoNtNKjgNKQ5Rz
	KQKImgZPc+6oLhJAVVGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbCV-0003ay-2y; Mon, 20 May 2019 05:51:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbCM-0003Sk-CI; Mon, 20 May 2019 05:50:59 +0000
X-UUID: 3911db8285d646db9ff0a24d2e6793ef-20190519
X-UUID: 3911db8285d646db9ff0a24d2e6793ef-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1514278621; Sun, 19 May 2019 21:50:54 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 22:50:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 13:50:44 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 13:50:44 +0800
Message-ID: <1558331444.660.3.camel@mtkswgap22>
Subject: RE: [PATCH v2 1/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 20 May 2019 13:50:44 +0800
In-Reply-To: <SN6PR04MB4925D68D8D8EF2E16FD6525AFC060@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
 <CGME20190515093640epcas2p17e4c3e4545ce5e4e4b59ed7b9a954741@epcas2p1.samsung.com>
 <1557912988-26758-2-git-send-email-stanley.chu@mediatek.com>
 <15a271c6-88c8-b9d5-68a8-dc142afdf224@samsung.com>
 <SN6PR04MB4925D68D8D8EF2E16FD6525AFC060@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C35318FB76C1B6118FB9D57F33EED020122AB4D17243F9CEC9A0A82013BC28C42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_225058_418828_AC7B8E1E 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

On Mon, 2019-05-20 at 05:47 +0000, Avri Altman wrote:
> > 
> > Hello Stanley,
> > 
> > On 5/15/19 3:06 PM, Stanley Chu wrote:
> > > Some vendor-specific initialization flow may set its own
> > > auto-hibernate timer. In this case, do not overwrite timer value
> > > as "default value" in ufshcd_init().
> > >
> > > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > > ---
> > >   drivers/scsi/ufs/ufshcd.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > > index e040f9dd9ff3..1665820c22fd 100644
> > > --- a/drivers/scsi/ufs/ufshcd.c
> > > +++ b/drivers/scsi/ufs/ufshcd.c
> > > @@ -8309,7 +8309,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem
> > *mmio_base, unsigned int irq)
> > >   						UIC_LINK_HIBERN8_STATE);
> > >
> > >   	/* Set the default auto-hiberate idle timer value to 150 ms */
> > > -	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
> > > +	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT & !hba->ahit) {
> A typo?

Yes! Thanks for remind this.
Will fix it in next version.

> 
> 
> > >   		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK,
> > 150) |
> > >   			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
> > >   	}
> > >
> > Looks good to me,
> > Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

Thanks.
Stanley


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
