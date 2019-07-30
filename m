Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4249C7AD5D
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 18:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIRe1mYS+DLp606FpBC6qT6l87Sw6Zq/V/rTRyONLqo=; b=G8t//EIb5AdPOl
	dY6WI8Ilae0F8XpPj/UZFcbSSX9TOTvigm/eFYmNdCiw1M4VbPOtA61q284oQKnIGG26qlIIKbDWw
	VYH9MZ2lxRGkit9lKgUeSswGVhWIbN73OxPOni0QIckGytyn8Ut4cRMXa/wl6gQf2tBzepvMYCQpD
	1W1n1VBH4WZHhqSY+FOLuGGAL0vKi8EfYCJZJ3oGDzSfuWmgpU2bb/gL8J1HzqQRcI+aGprGLuPmY
	cJ5g6mS/L1oI0rq1GdL1eWnw7ETC9DIWaFwPDRn/lDPYM6MQAduwXwqQ0TmcCiZp7FpyafutWifKP
	tHP4juYOMl6vzgPz19wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsUnB-0003t5-24; Tue, 30 Jul 2019 16:16:01 +0000
Received: from [177.157.101.143] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsUmx-0003iU-Ae; Tue, 30 Jul 2019 16:15:47 +0000
Date: Tue, 30 Jul 2019 13:15:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: <gtk_ruiwang@mediatek.com>
Subject: Re: media: mtk-vcodec: Handle H264 error bitstreams
Message-ID: <20190730131541.40ce5ead@coco.lan>
In-Reply-To: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
References: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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

Em Fri, 26 Jul 2019 16:54:33 +0800
<gtk_ruiwang@mediatek.com> escreveu:

> From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

...

> Signed-off-by: gtk_ruiwang <gtk_ruiwang@mediatek.com>

Please use your real name on your SOB and at the From: line.

Thanks,
Mauro

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
