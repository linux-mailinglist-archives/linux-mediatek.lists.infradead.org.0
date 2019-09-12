Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7BB06BE
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 04:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNupbIZLlxT/AoEYagJu87FPJbJzwF6AAdF20mU6EA0=; b=OH9GMZ5Xa6xXHk
	TR5u3nrpJ53bAG4/XbUAt4k4mgOZBpvSL4e5nuYdQd9xxnjpeIh4iclnZ50SGElATTX67CtytUPdi
	Hs7+8MfZ2pSkhX/j5lQHpNjhRwZS+l2E8xreYd1YdG1os0aMQa3nup/xtxIKdr7GK3j/MtgK4OxbB
	ORokyuTNjM6OjF7ZU1oig5qm4cklXZXGWKfe6PU7MDL1lcodsCkVoSsHkJkhcp+8cZMcWuS54mtbc
	DpWsrLgc41JK3sOGWd6FE8dLc9FXMQRiTtsqQtSj4EY7HCPYpWD5KL/Vn7NFaqI0IXpuTGBTazsKv
	+RNjM7x4wVT3WF9PVOrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8EnC-0001jb-GQ; Thu, 12 Sep 2019 02:25:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8En8-00016D-4A; Thu, 12 Sep 2019 02:25:03 +0000
X-UUID: 50d571f2c54a4a0fa94c4b4aef425cee-20190911
X-UUID: 50d571f2c54a4a0fa94c4b4aef425cee-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1609994783; Wed, 11 Sep 2019 18:24:57 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 19:24:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 10:24:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 10:24:54 +0800
Message-ID: <1568255094.16730.10.camel@mtkswgap22>
Subject: RE: [PATCH v1 1/3] scsi: core: allow auto suspend override by
 low-level driver
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 12 Sep 2019 10:24:54 +0800
In-Reply-To: <MN2PR04MB6991142450EEF05E2AF2D8DFFCB10@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1568194890-24439-1-git-send-email-stanley.chu@mediatek.com>
 <1568194890-24439-2-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB6991142450EEF05E2AF2D8DFFCB10@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FFB581AF885F6D0D8BCF8806218FBBFE49DD31A95CC1CEB7B6B3B7B30AF6FD832000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_192502_191111_A9220E4F 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "Andy Teng \($B{}G!9\(\(B\)" <Andy.Teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

> > diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c index
> > 149d406aacc9..2218d57c4c0c 100644
> > --- a/drivers/scsi/sd.c
> > +++ b/drivers/scsi/sd.c
> > @@ -3371,6 +3371,9 @@ static int sd_probe(struct device *dev)
> >         }
> > 
> >         blk_pm_runtime_init(sdp->request_queue, dev);
> > +       if (sdp->rpm_autosuspend_delay > 0)
> > +               pm_runtime_set_autosuspend_delay(dev, 
> > +
> Redundant line ?

checkpatch reported "WARNING:LONG_LINE:line over 80 characters" when I
made this as oneline : (

> > + sdp->rpm_autosuspend_delay);
> Don't you need to call now pm_runtime_use_autosuspend() ?

dev->power.user_autosuspend was set by blk_pm_runtime_init() above, thus
pm_runtime_use_autosuspend() is not necessary here.

> 
> >         device_add_disk(dev, gd, NULL);
> >         if (sdkp->capacity)
> >                 sd_dif_config_host(sdkp); diff --git a/include/scsi/scsi_device.h
> > b/include/scsi/scsi_device.h index 202f4d6a4342..133b282fae5a 100644
> > --- a/include/scsi/scsi_device.h
> > +++ b/include/scsi/scsi_device.h
> > @@ -199,7 +199,7 @@ struct scsi_device {
> >         unsigned broken_fua:1;          /* Don't set FUA bit */
> >         unsigned lun_in_cdb:1;          /* Store LUN bits in CDB[1] */
> >         unsigned unmap_limit_for_ws:1;  /* Use the UNMAP limit for WRITE
> > SAME */
> > -
> > +       int rpm_autosuspend_delay;
> Can suspend be negative?

Yes, however negative delay value will block rpm.

Here we just use the same type as parameter "delay" of
pm_runtime_set_autosuspend() even though we do not set it as negative
value in this version.

But thank you so much to remind me that
pm_runtime_set_autosuspend_delay() can accept "zero" delay so we shall
allow "zero" sdev->rpm_autosuspend_delay as well.

I will fix it in v2.

> 
> >         atomic_t disk_events_disable_depth; /* disable depth for disk events */
> > 
> >         DECLARE_BITMAP(supported_events, SDEV_EVT_MAXBITS); /*
> > supported events */
> > --
> > 2.18.0
> 

Thanks,
Stanley



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
