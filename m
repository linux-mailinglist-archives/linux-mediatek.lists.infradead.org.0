Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571B7B8CE
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 06:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byijgMfcQN82uHuk1FoTAhxr5By78iSy7RSttdky/ZM=; b=thH7kwnBHYb2Qt
	Gq6S0iJAZiWnyUGB1cGWKK7fzwEvPlteaU/S9/eTACQkWGu38JTpws1iU6PollIe5CTg21LrkjZks
	h2vKqPwn5HHExAULTDfgdGXLiLO/ckSM08LAPEoQUulgm3N/KZibmCLe15BfU6Ecj5MJc0gcg0Pvz
	kEYO2MPXX1Ry+teKOHR0CkGU6Z81N9LIvwPT81TUthRg6sAIRasNTRf/RDz/7qXNl52IiVeIq0j09
	AFlgo1PB0pr/5VnfOTHmQaAfWMxZlfy9vrOHIqAlX0PAu07VuU3o9shcCKGogB8QrlGE+UKT0lk+L
	Gv9o6RUKxOiMponcYT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgLP-0001OK-Ef; Wed, 31 Jul 2019 04:36:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgL7-0001CH-F3; Wed, 31 Jul 2019 04:35:50 +0000
X-UUID: 52d00a5c364a47e4a621d33bcb0c46b9-20190730
X-UUID: 52d00a5c364a47e4a621d33bcb0c46b9-20190730
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1468231843; Tue, 30 Jul 2019 20:35:47 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 21:35:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 31 Jul 2019 12:35:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 31 Jul 2019 12:35:43 +0800
Message-ID: <1564547743.5425.1.camel@mhfsdcap03>
Subject: Re: media: mtk-vcodec: Handle H264 error bitstreams
From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Wed, 31 Jul 2019 12:35:43 +0800
In-Reply-To: <20190730131541.40ce5ead@coco.lan>
References: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
 <20190730131541.40ce5ead@coco.lan>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 496C836286EC7F030A9ECD7B32BC667A768E1541A52722DF86AF4CB1367ABF1D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_213549_510129_A5421EE6 
X-CRM114-Status: UNSURE (   7.30  )
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
Cc: devicetree@vger.kernel.org, Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear Mauro,

patch v2 uploaded.

Thanks,
Best Regards

On Tue, 2019-07-30 at 13:15 -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 26 Jul 2019 16:54:33 +0800
> <gtk_ruiwang@mediatek.com> escreveu:
> 
> > From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> 
> ...
> 
> > Signed-off-by: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> 
> Please use your real name on your SOB and at the From: line.
> 
> Thanks,
> Mauro



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
