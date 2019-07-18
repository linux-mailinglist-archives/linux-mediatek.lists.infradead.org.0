Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C88046C6E6
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 05:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZWkLpMuE/sJSCckBbV8XkKhjrzCv8AeNBNo24V+RDU=; b=STg4mVCMOvTfPp
	T526o3lHLicUi1ZcOS7sq9V6PGk7fo2PceM2lzL194k/DTrEAVALNQstIC6UA2Tyoip4Zv0qLP7qv
	qwvLd+6hgx/U3F546oKDNQ6tVgJGWqFLuAbwCRbNj1OfejgzvCMTUEfNFsbNM2HpA/jl5whZsrYO0
	WXiJkFul7qn3jxqrSjy2a1n9bWJIsfGjEvWrYttGsUf+D5izYRRM7O+ht9pruMZR/eGbAaJf8mAIe
	GqRgi8S2RSdHZaHbd+HeWMqb1gadUAVGlWgQ3eD4oKeiVUEaM/XoXu7Uy+Px8595mxQB3a6dQFu+i
	tCRDMr16MTpbjruKl4oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwxo-0002Mm-QZ; Thu, 18 Jul 2019 03:20:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwxP-0001GK-Hf; Thu, 18 Jul 2019 03:19:48 +0000
X-UUID: e529a88915b1452d9a2cd4deb579f0ba-20190717
X-UUID: e529a88915b1452d9a2cd4deb579f0ba-20190717
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 205289992; Wed, 17 Jul 2019 19:19:42 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 20:19:41 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 11:19:40 +0800
Received: from [10.17.3.153] (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 11:19:39 +0800
Message-ID: <1563419979.20220.12.camel@mhfsdcap03>
Subject: Re: [PATCH 0/5]Add support for mt2701 JPEG ENC support
From: mtk12025 <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Date: Thu, 18 Jul 2019 11:19:39 +0800
In-Reply-To: <79316488-30fd-7ff3-7598-d29f85f663ab@xs4all.nl>
References: <20190709032103.10291-1-xia.jiang@mediatek.com>
 <79316488-30fd-7ff3-7598-d29f85f663ab@xs4all.nl>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_201947_592161_EAA37467 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear Hans,
Thank you for your reply.

PATCH v2 has used the latest v4l2-compliance version for test.

PATCH v2 has fixed the compliance test fail, and the driver checked the
buffer size in queue_setup function.

I am sorry for existence of change-id caused by my mistake in the new
patch.

Best Regards,
Xia Jiang



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
