Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BC3F8A15
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 09:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0c6pp2wyfkktU9C6RC/RwyFZnU1S8o9H2wf0NK5BYI=; b=cb40mCvHpMnmiX
	aEvhdilDhayDoxoJBYxrEd11JykbzMrwTEmANhOjcYkNv33D+YiLsOGIaU/yXeK0f7J8+16YyQknd
	r/3HC+2/s45OeKHqaIvhODypiQnx9OUXyrp7wmE6g+9WtFcjG9dg2+beXyV3eBb26L88Dk83lxybA
	waBunLEUNpUiVae/lMlxB5mwMLJ5IYkZgO5A5ZxFPlzRVDcmdlvE+PUA/lBj6UiaIyNc+4s+SyBzs
	AlmRaBTFFLYklIIEXbbDNgT1AJBdDdcGd+CuF+zuxrQI6C8j33fUBozGI5QrtDrN+Lvc3PdxGxj3m
	MjKEjVVP2KaaYFsRhGmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUR7p-0003NF-Hn; Tue, 12 Nov 2019 08:02:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUR7l-0003Ma-QB
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 08:02:07 +0000
X-UUID: 2d8e83b9f8264b79a243471675a0898e-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=4RVlzdcDuNrzrh5f83WnNDQstUL/8Qt6uk2mPJJ+ERY=; 
 b=U6HE9yGRkWNGNiLOwdYGx+akMPQRd2fQ6EyZG59SmsfYeSAA6b9Bo1rE3GeN8kaXfl4V1fu6PINlag6n42MKaddop2rblfHrU1V/WloQvJjbFcjeokYILq8CcOqbyIH+3zC3m8z5G/a2QzjOnHYGD32Y1vtcMHlugKJMoUJRCbI=;
X-UUID: 2d8e83b9f8264b79a243471675a0898e-20191112
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 873376593; Tue, 12 Nov 2019 00:00:21 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 00:00:02 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 16:00:01 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 12 Nov 2019 16:00:00 +0800
Message-ID: <1573545601.14232.8.camel@mtkswgap22>
Subject: Re: [PATCH v2] soc: mediatek: add SMC fid table for SIP interface
From: Eason Yen <eason.yen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 12 Nov 2019 16:00:01 +0800
In-Reply-To: <71b9cfcc-bd4f-75de-0057-d64c5dc49e92@gmail.com>
References: <1573439402-16249-1-git-send-email-eason.yen@mediatek.com>
 <71b9cfcc-bd4f-75de-0057-d64c5dc49e92@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_000205_849308_BCB166D7 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Matthias,


I will upstream mt6779 sound card driver on Mark's ASoC repo:
http://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git

But it is still under internal reviewing and not yet upstream.
So, I think that this patch could be upstream first.

Maybe, other mtk sip clients can use this header and add their's
specific MTSK_SIP_* ID.

Regards,
Eason


On Mon, 2019-11-11 at 16:17 +0100, Matthias Brugger wrote:
> 
> On 11/11/2019 03:30, Eason Yen wrote:
> > soc: mediatek: add SMC fid table for SIP interface
> > 
> > 1. Add a header file to provide SIP interface to ATF
> >    for clients, please define MTK_SIP_XXX  with specific ID
> > 
> > 2. Add AUDIO SMC fid
> >    mtk sip call example:
> >    arm_smccc_smc(MTK_SIP_AUDIO_CONTROL,
> >                  MTK_AUDIO_SMC_OP_DRAM_REQUEST,
> >                  0, 0, 0, 0, 0, 0, &res)
> 
> Are you planning to upstream a driver consuming this interface?
> If so, I propose to add this patch to the submission of the driver. Sounds good?
> 
> Regards,
> Matthias
> 
> > 
> > 
> > Eason Yen (1):
> >   soc: mediatek: add SMC fid table for SIP interface
> > 
> >  include/linux/soc/mediatek/mtk_sip_svc.h |   28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >  create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
> > 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
