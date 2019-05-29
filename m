Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5022D7CB
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 10:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIZ0M6J4zbQFyZASD13JHtnYqrtq098pdASfoMMN8F0=; b=fhWCcWsLosdx3q
	Z04G4fI8x2SC+VdbAdEnfPCzjxfzpjT5wjf2nBCg32A3X3R44FRISmj5h1aMWo6zd65qe5i6IkYrH
	3chOTcV8Q5Y/k5P18BnK8SNzPUSNkFLA1qn5J+7Ljof/8BR0OxkK7W6veeImFgldBgzpQYp7VojRN
	BlZzgL6SeX5tpILFsEhLg78Yxa1jSYJO6HYL3rXBTtk+BtGEfey8PXDqP6rNlWTZ0DcTXLJOymzH2
	qlfoVOd9Tu96pmZKaj8HcKPGe4wuoeYYYA5M3KwU6G+K5w1si5UfWFdnUWJQBu9r5/kD0GWjUFSVf
	kXZjmmwRefBPUuCEOFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtwi-000496-Ui; Wed, 29 May 2019 08:28:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtwf-00047a-8x; Wed, 29 May 2019 08:28:26 +0000
X-UUID: ee308e0e85f849dba1f04509e4e446ee-20190529
X-UUID: ee308e0e85f849dba1f04509e4e446ee-20190529
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1917238427; Wed, 29 May 2019 00:28:23 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 01:28:18 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 16:28:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 16:28:16 +0800
Message-ID: <1559118496.4226.11.camel@mtksdaap41>
Subject: Re: [PATCH 1/3] drm: mediatek: fix unbind functions
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 16:28:16 +0800
In-Reply-To: <CAJMQK-jDhDNViUA3dpixG=_Pe7x0qH4utBWy3k+D_+oKwEOPig@mail.gmail.com>
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-2-hsinyi@chromium.org>
 <1559093711.11380.6.camel@mtksdaap41>
 <CAJMQK-jDhDNViUA3dpixG=_Pe7x0qH4utBWy3k+D_+oKwEOPig@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A023916AAC1D56E857E7DE6AAAEAA623764789450FCB15420F9FB9F4341CEE5A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012825_314555_EDCC4C27 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Wed, 2019-05-29 at 15:06 +0800, Hsin-Yi Wang wrote:
> On Wed, May 29, 2019 at 9:35 AM CK Hu <ck.hu@mediatek.com> wrote:
> 
> >
> > I think mtk_dsi_destroy_conn_enc() has much thing to do and I would like
> > you to do more. You could refer to [2] for complete implementation.
> >
> > [2]
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/exynos/exynos_drm_dsi.c?h=v5.2-rc2#n1575
> >
> Hi CK,
> 
> Since drm_encoder_cleanup() would already call drm_bridge_detach() to
> detach bridge, I think we only need to handle panel case here.
> We don't need to call mtk_dsi_encoder_disable() since
> mtk_output_dsi_disable() is called in mtk_dsi_remove() and
> dsi->enabled will be set to false. Calling second time will just
> returns immediately.
> So, besides setting
> 
> dsi->panel = NULL;
> dsi->conn.status = connector_status_disconnected;

Sorry, I think your original patch is good enough, and you need not to
do the besides setting.

Regards,
CK

> 
> are there other things we need to do here?
> 
> Original code doesn't have drm_kms_helper_hotplug_event(), and I'm not
> sure if mtk dsi would need this.
> Also, mtk_dsi_stop() would also stop irq.
> 
> Thanks




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
