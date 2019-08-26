Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79C79D8F6
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 00:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlXjqilZsCj4vNFz0oBVLgyfuCoBhJyyjn4k+HDE10o=; b=nggiVNaCBB1fJk
	3XS4W82jNcR66EFScZzxuytmaoXodDCnJFhgoMXy54SNZS/thJfij0fKbXph+EHrG53Jc7iO+cVNC
	lr+9+OtkD/80PpE+a1nM47wJXTYRe6BjY7ng7MOiiG1eVivyMUKwcVIwv8OESa8RaroFkIpEUBmxt
	x2MdQSlOs0i/mfAqwjRUAql25FIx3eyfIBUdLhJoNXLhDodUNq4P0McLIs9N0GYsYX5dsDqc6HBex
	m/bOetQgJLm783SlvDkJabC9skGvV0tKdQ/Bqt94bXfHTaVJihjlRN8DLRV2EolUAafTtaqHlZAp5
	WBW+QgpRXJEUmggwX3fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NHm-0003OI-NQ; Mon, 26 Aug 2019 22:16:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NHU-0003Bb-Qo; Mon, 26 Aug 2019 22:16:10 +0000
Received: from [104.132.1.107] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i2NHH-0006Y8-M6; Tue, 27 Aug 2019 00:15:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 amd-gfx@lists.freedesktop.org
Subject: Re: [PATCH RESEND 05/14] drm: rockchip: Provide ddc symlink in
 rk3066_hdmi sysfs directory
Date: Tue, 27 Aug 2019 00:15:48 +0200
Message-ID: <34062545.jeDZulVJJa@phil>
In-Reply-To: <4cad24dde4508cec17483f983da08226ba7e48b0.1566845537.git.andrzej.p@collabora.com>
References: <cover.1566845537.git.andrzej.p@collabora.com>
 <4cad24dde4508cec17483f983da08226ba7e48b0.1566845537.git.andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_151609_012989_6FBFA513 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, kernel@collabora.com,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Am Montag, 26. August 2019, 21:25:47 CEST schrieb Andrzej Pietrasiewicz:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
