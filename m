Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF572D5E9
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 09:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCgNlqK3zWZUqy4AUHketd84NYQ1B16hAKb9eyvsvKU=; b=kZilpQ2D4peAi+
	HKhFN54jg7nzPJ19pUA6vL3p8VhhElzcVqySdQL7/rHGBXu+J1+lTQotgTdWcY8au1x6ijqZ1BNaJ
	CqB+9wXP6tztn9RiZX0ioLq5nzgjuZuEBCuN3iZrmEaFXOetaQKbeN3jAdFMjCUK7iLVv+T/DUYtQ
	C/qUFaZ7AmKrm2wiHZs0DgqhCoUecFIgADkBSfTmEOH7i6ewtfMYgLjC65pjye1mxMtGc8V6T16Z5
	jqY1DKWlPoKosxW+F3HDM3ZMXHJN7EwQIO35/99c3Ahl8FwnoOzmE9NZny6SQM7JFBpy6W/7Sm4Pj
	Hh8xfZtjLZs+03KZ/M3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsfq-0007Le-Tc; Wed, 29 May 2019 07:06:58 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsfm-0007Kg-MI
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 07:06:56 +0000
Received: by mail-qt1-x842.google.com with SMTP id t1so1277957qtc.12
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 00:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qA9B1CIdYn7uFQh9agY6VqwI4z4QDnUm8YBBmahDu4U=;
 b=RSu6+dlro0iGo/wUkUotKEAtoX5JlmpVTXx83cweGW1rp3wkzwJvCnwrRTU9LabdhH
 WJzxoaT/USBOZMKWfosrpwqhOlCtxQhy0+dWLhm1GUa4vdZxi4ALhT4Gsa6dE7h4rntu
 4rNayUppH/l8daDhNYVSVWru1i7bkr9B8Pxdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qA9B1CIdYn7uFQh9agY6VqwI4z4QDnUm8YBBmahDu4U=;
 b=jzgbov1QRXLUmAHGY8LFb5ustwSZwk0m0X4gQSQEBJ2TYMvyqX9+EDyckkS7lxfI2U
 o2rDTfEbVxPMUhWzMolVP3mekqwwpT1Yg2r2HD2jnY3ogS4NyfZPsYYCMZfQRl9w2Ar3
 vP2BV8KcYCi41MbEjOd4SyQRV6b2+mVlPBN1NZ7ErhRL58Quwll8ToN9NAzBcJq2NfXD
 qdrXgI6lxFM77kLEcnI1eahbSVGwgVKj5GkluKC46vsoqWZWL2kYwjBBGcyPteKVTur1
 b5kxBbxGIdQvDbVeuRDRpyn0RxU+KaTsb8eTdSgqJ8nwqkEWguXs1EG6UVZ1jAgGJz/M
 dB2A==
X-Gm-Message-State: APjAAAWT7Uwl2BmpaU/lLDN8GIk7Y5DLwHD7m1cb0JzQDtJTK8tNoKm1
 267zHGVJp3NYDVXyNSgOiv/XL/ThWripsreBEEvcpA==
X-Google-Smtp-Source: APXvYqwaIhOfv/yjZJUEyrJh1Af7NiK3bC572neTGlR+hYHK4lhLZttmwCQu3ZrIVWJojbIsz1dCv5ftzO/ZJKndKPs=
X-Received: by 2002:a0c:b66f:: with SMTP id q47mr24087512qvf.102.1559113613462; 
 Wed, 29 May 2019 00:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-2-hsinyi@chromium.org>
 <1559093711.11380.6.camel@mtksdaap41>
In-Reply-To: <1559093711.11380.6.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 15:06:27 +0800
Message-ID: <CAJMQK-jDhDNViUA3dpixG=_Pe7x0qH4utBWy3k+D_+oKwEOPig@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm: mediatek: fix unbind functions
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_000654_755103_0790F1B5 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Wed, May 29, 2019 at 9:35 AM CK Hu <ck.hu@mediatek.com> wrote:

>
> I think mtk_dsi_destroy_conn_enc() has much thing to do and I would like
> you to do more. You could refer to [2] for complete implementation.
>
> [2]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/exynos/exynos_drm_dsi.c?h=v5.2-rc2#n1575
>
Hi CK,

Since drm_encoder_cleanup() would already call drm_bridge_detach() to
detach bridge, I think we only need to handle panel case here.
We don't need to call mtk_dsi_encoder_disable() since
mtk_output_dsi_disable() is called in mtk_dsi_remove() and
dsi->enabled will be set to false. Calling second time will just
returns immediately.
So, besides setting

dsi->panel = NULL;
dsi->conn.status = connector_status_disconnected;

are there other things we need to do here?

Original code doesn't have drm_kms_helper_hotplug_event(), and I'm not
sure if mtk dsi would need this.
Also, mtk_dsi_stop() would also stop irq.

Thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
