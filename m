Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E331112779F
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Dec 2019 09:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvxyhfPanFudhdFFFv7CELhyLzx2FvDvyilALUGtiAM=; b=j86uaKjDrbjij/
	H9w0UB+I9Vh3yR0HswIV/4zXd2DnTPjfSYGK9tLONRbry44xayupZpY8sy79UmoDJ206FckASIfrJ
	AekrJeZvgkN3NfhhdnDb94aCCYIwifV7PMkOJDW3NPAGlZDsD/cT9eDzJGF9OG0CVgEJi8ypvUSej
	yNxpeiCc4iPUOVUk2ehtaO36GAkZ3IaSr68X9L8FPcnknuDoJWVSXL2jXVu/78gyFNHPL923ZOuZ+
	LJR1b8FnpePMyC4/YKNe2kJnsCF9tCaj/wx8miD+iqnse9fazYtvcbELESUfgTchJTWgzWX9f7VYU
	e1mXg5H8Csg/cCD00mpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiE4c-0001bn-Rf; Fri, 20 Dec 2019 08:55:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiE4R-0001Sy-VU
 for linux-mediatek@lists.infradead.org; Fri, 20 Dec 2019 08:55:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id b10so8619431iof.11
 for <linux-mediatek@lists.infradead.org>; Fri, 20 Dec 2019 00:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFyk6wfDM3uJNZM3XmVJRb6zXEf3/dZ+tc8Bv4YB2yY=;
 b=W0dWNacy+Z08VU2VNyW6cLKarj2vQSvC7GwIrBrk5kAeHpY8LUCugVbH17i6+PQmyA
 lzshmpaK75tqkDiY8MXYJFy40HtHbIraPO0UNF/SdTr1T0MrZjg9bMNdnlBgv7STNqf6
 AcP0G+MibU3+k6+ra+ZS/fYB+z7mO6Z7OA5uI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFyk6wfDM3uJNZM3XmVJRb6zXEf3/dZ+tc8Bv4YB2yY=;
 b=XLixN4wuLTQFTFjragBaJdwx04J1+iSO8cQmi0DgEY4x0+6U+Yf3XRVRKvHSolTyI8
 ISwdeiUM+ZDLiXdvUxU/DXMC4r8fasGOXcDGd5W1z1Pct8TBjqgWCgGpa9DraXTYVceN
 afXYwiJy/9kMHUHj1l7IbjC4gdvBKeyZa0GWig4pyqBZ4VOaFfvcWO6E2cwQARLE25r6
 s2w04mBaM5J4sAXx2KULkcBlJMgTREmOGB/2817bA5eboQzEiE4qw//OmMe8PS9cYKw8
 b25VCBAhMq9TOzyWiAJzlAJ+1Y+ng4sQk3XN0jxvq3yKWqBmWCMeCh1Ad+oaGM12JkoV
 Mc/A==
X-Gm-Message-State: APjAAAVSVAOYci7ZH52gGSB6fj/AY2jV5erzbSgGU9ghqaMYssL1V9YS
 RMbVyDAk7QfmjpI8A2DQ6OE6kbi8RK3/g/IarG2zCA==
X-Google-Smtp-Source: APXvYqx6jNS3ruJSqRukqpBfv5nCziRlHY3HFBeibFf5MWoadOk37sDVbGh863vc8QU+b1jTv0rGaDTo6tv6CoaEyJc=
X-Received: by 2002:a6b:3845:: with SMTP id f66mr9807832ioa.102.1576832138346; 
 Fri, 20 Dec 2019 00:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20191220081738.1895-1-enric.balletbo@collabora.com>
 <20191220081738.1895-3-enric.balletbo@collabora.com>
In-Reply-To: <20191220081738.1895-3-enric.balletbo@collabora.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 20 Dec 2019 16:55:12 +0800
Message-ID: <CAJMQK-h9w5a1CKyTqdBsmz6TYbcGMzhPLNwU7kYBYp56EV0PZA@mail.gmail.com>
Subject: Re: [PATCH v22 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_005540_041516_C380812C 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jitao Shi <jitao.shi@mediatek.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, lkml <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-mediatek@lists.infradead.org,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 4:17 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> This patch adds drm_bridge driver for parade DSI to eDP bridge chip.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> [uli: followed API changes, removed FW update feature]
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
tested on mt8173 chromebook

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
