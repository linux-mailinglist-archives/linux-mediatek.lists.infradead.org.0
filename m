Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED82811FCF1
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Dec 2019 03:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0xXb/h9eq9wC3hxhaVtvB3vZpaEEDRy37xVyoU95R4=; b=Qfjob8l0US1VE0
	ZML4PIuIcdh9IVuhiQECxdAnyuIhPfXtyKovUU1gfbrTmq0VuuE0IT2mFDviYd+5Fce+dTyd8LwTp
	VsHyN5lFOO3O/ZraZV2Hg1nwEZ3Dq8KDbZOsTpfgohA+PJPLeR0HW/gkJTMo/PAju23C2S4qkMBHt
	mV3fle+j9pwBpuqyH2nNlsr7vX0vngIV+hcmTCSmDo3/mNzD5KEvxQymjPA0OAdzU3mchKiCGaOyW
	0ENK3Hq7x3M9lXMBMnr/fbmvieGVXzoDj8rQpH/JO7ciym2rjnXEzUcJDGtXhNYLtHwbnJh2mJrqe
	pkvgEiEi2jHwdX8ACKkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iggLX-000222-BJ; Mon, 16 Dec 2019 02:42:55 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iggLU-00021e-3W
 for linux-mediatek@lists.infradead.org; Mon, 16 Dec 2019 02:42:53 +0000
Received: by mail-il1-x144.google.com with SMTP id b15so4206338ila.7
 for <linux-mediatek@lists.infradead.org>; Sun, 15 Dec 2019 18:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9aCQDna0JdNgAijPNYO66CG/8UAC3gxJw6W+92Szu1s=;
 b=kiQS2TqrzYfZYPU/1gnhQNwf7BaK3yuKuPbUIr9uvHPiSCVvyG2e2bbRtCemQsxl+w
 ZI9NXg2Uw8JfEi4PJI9oCU3NwggR0UzFqsjdiF3tKXpqqx2Oy97r41md083YYxvbFqlw
 lHfY5VBlJ7w1kDKrjCWmEaKZBPgUNS6IoHRpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9aCQDna0JdNgAijPNYO66CG/8UAC3gxJw6W+92Szu1s=;
 b=SNu/y0zVLC9dW/ZGFGMiiGXOGkOJ1b+2vsWMKsCVjHRS6/UiacWL9jbibT//SC9HO7
 FEHZu6cYJBWhAqhfNKVS5DT6/84VdUKSjzEIboZsoZHHu5v///JmAtq8db3yy57Vkpz0
 MJ6bONvNI/Xj1Nu2Lp2Gzb3Nw9qGJO4crThDjlewgVcj1wjc4whFYDqkyBGhNNxF2IJl
 ABDKpnCbAPeiJ9WeetqugwA6ofVM/DTIavS8dbbi6Co1PveUmgGqjkaYwRnsgOmreJlg
 qzUiau9AcYQPRFEKs3wEXdflybG3pDxRtZZEczk7t5fG9nTIqgXW9NBXoafWZcpwDEux
 3ZJA==
X-Gm-Message-State: APjAAAV/1jY9HiveOhSnRdCzJkxJ/4EBb+Yi8iDSmdpyLlujAnTTrMqi
 063LPoa7og5UFjz6+ggk5UrEzSLNgSD/lEvDQBmqhw==
X-Google-Smtp-Source: APXvYqzbg32oU48Vmt3h27I+7GAVGf3W+sKHDO/Z56LHLEB+l1l4zmiyGkYXciJP3Lxka1EKNGXP3lMjw3WC7PBmK/Q=
X-Received: by 2002:a92:af8e:: with SMTP id v14mr10077850ill.150.1576464170096; 
 Sun, 15 Dec 2019 18:42:50 -0800 (PST)
MIME-Version: 1.0
References: <20191213095215.17068-1-jitao.shi@mediatek.com>
In-Reply-To: <20191213095215.17068-1-jitao.shi@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 16 Dec 2019 10:42:24 +0800
Message-ID: <CAJMQK-iZq0SRR7Q1cyh033xDXwD+MY-utO05+KqFR=ZRuaVUDg@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: reduce the hbp and hfp for phy timing
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_184252_171963_065C76EE 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bibby Hsieh <bibby.hsieh@mediatek.com>, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, stonea168@163.com, cawa.cheng@mediatek.com,
 dri-devel@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 9:52 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> There are some extra data transfer in dsi.
> ex. LPX, hs_prepare, hs_zero, hs_exit and the sof/eof of dsi packet.
> This signal will enlarge the line time. So the real frame on dsi bus
> will be lower than calc by video timing.
>
> So dsi driver reduces the hbp and hfp to keep the line time.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Tested on mt8183 and mt8173

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
