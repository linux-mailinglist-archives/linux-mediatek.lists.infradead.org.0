Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E97A3285F
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 08:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgccFC3Bk6gkud2Qm4xXNKGZdkGwhf33PzxMxj+bP2o=; b=Lp1fjlwPcov0kD
	fnP13Xq3Cocpa0w02zdyKce2FYvalrFDNxxNeGI/KVY0MT0jmwxE2HSw5gmlQsRH6/fGzwSyj28hR
	Dw7zH+XlvKuPZvujAnMyC8Upbn0Ir6vc4AVHdVja2ozoRFF0cIKst478PYsvhFz8o5RvfuSc1Shvr
	YZxKUGyGVNYmqBvw76SHYNL1y1T91wPNmHNXFH+iaukkEHBXGwlt1YoW0JGChMHvlAeCO08IGBuBN
	AQdxBeG6oMFDD+4ZuGNrlXtcwxYfUcEHBbhdHS3ctvIYk+3VNh3x+9TNU7CLU2cwHl9sON9A+jhap
	ezAUhHGMJfjBmjuMMzOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgDR-0000zW-RR; Mon, 03 Jun 2019 06:13:05 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgDK-0000tP-6h
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 06:12:59 +0000
Received: by mail-qk1-x743.google.com with SMTP id w187so10270826qkb.11
 for <linux-mediatek@lists.infradead.org>; Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
 b=fuxr8hy1ndYkPliVijP3ig5I+ip9VWE0P2yh80Jq/MvQG6c9DoiS6lr2FunG35GbPp
 Ndqy5vBKyLtaR3WnnumoaQ/hATDNwRh4VhWFKf29gGr4JSmvjErcNiFS62LTDxLrAwP/
 4gouhbfiCjvi/19vu9jcISzQHvv3SlbTnrJ4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
 b=BkPhjmKR+f9/8njDFK/EmLxxOmLF5Nay+I8k4g1vtoj2LGn3DhZqA/ZGJEshcmB+b5
 fZXyjsL8JYvPXvtNKwyZQcb6sfX2jJz3rDZtVlIvnyhwehvTJqWjiOYAF47+vNgzkI9n
 dHFiuqLTqO8JCaCXRmcdaEQ+wGhZij2QQSFo67U/PE9OvLIKs/cXUm1TVx5mplGtavrp
 4ingSd7REYC3h06WoVh3xujWG8yoLYwR3r57BKCScc81jp/fVbYFIdDxpSWlU5xHPuCJ
 jJsgQF56smTYCl3Wat4ys+/n8NB+h41b7Fi0SRkrhZA5H8DrEiLcBM8ecJAwOoYelHpZ
 pwfQ==
X-Gm-Message-State: APjAAAWYYVX3Qs/t3b/zCucV5FYqcy+c3QJv+u7RQ4t3hiXtCWpjZr9Q
 wqBOMm3nvtW68TWR07UBK8itDegOEmTDzIHKtz6yVw==
X-Google-Smtp-Source: APXvYqyYa6aK4qpb4pHRxq5EdOva3L9eBw4p4afxZAlRUL377+FbepH6pzSX2TDOULWOglfbvTtKnNCF8b4lPScN6ns=
X-Received: by 2002:a05:620a:1425:: with SMTP id
 k5mr20130384qkj.146.1559542376042; 
 Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
 <20190601092615.67917-2-jitao.shi@mediatek.com>
In-Reply-To: <20190601092615.67917-2-jitao.shi@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 3 Jun 2019 14:12:30 +0800
Message-ID: <CAJMQK-iW2SfHL0Dgc6p8AmrwjL=XHP4SeyxaZz=R-5x0qLZtFw@mail.gmail.com>
Subject: Re: [v4 1/7] drm/mediatek: move mipi_dsi_host_register to probe
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_231258_242735_BA4967E5 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, CK Hu <ck.hu@mediatek.com>,
 yingjoe.chen@mediatek.com, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 9:26 AM Jitao Shi <jitao.shi@mediatek.com> wrote:

> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>                 return ret;
>         }
>
> -       ret = mipi_dsi_host_register(&dsi->host);
> -       if (ret < 0) {
> -               dev_err(dev, "failed to register DSI host: %d\n", ret);
> -               goto err_ddp_comp_unregister;
> -       }
> -

> @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>
>         dsi->host.ops = &mtk_dsi_ops;
>         dsi->host.dev = dev;
> +       dsi->dev = dev;
> +       ret = mipi_dsi_host_register(&dsi->host);
> +       if (ret < 0) {
> +               dev_err(dev, "failed to register DSI host: %d\n", ret);
> +               return ret;
> +       }

(It's commented on v3, in case it's missed, sent this again.)
Since mipi_dsi_host_register() is moved from .bind to .probe,
mipi_dsi_host_unregister() should also be moved from .unbind to
.remove?

Thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
