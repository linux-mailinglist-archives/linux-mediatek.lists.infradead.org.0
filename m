Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A08AB0FB
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Apr 2019 00:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpULAdOo5FukvH8ZwRFni82zYMuAqAk0Lg8NGBa5q2I=; b=a53u3bFyv2eEUa
	hFRnvC6jzLnunZtbrmzRPIBEmp1L5IDKH1BF+djMSsQOWm/cMnjmelRzn2uY58YZbGviWAI+aSlTz
	zV3tcD3Fpyj4CSazi1lufXutFvsKzk6pX4Xa8Tu0ZYm3ekjUX1TBl94PdFQFALnP4CUO/uqJkCLDC
	A5UApR38HQ28gLnMc6d+DmQcszhYdu+T7j75Bbgvjw7GmosBiK2ET90nMbOa+pEmPkfWqd+TzdqiI
	TnAWq99kYJ5G7zQ5jUakydTBwbgOjip2+L4sAiVvr+3CEuQRiMAQ4zj69hSFw2P0n+ag4ZMh4DE83
	Ep8rFKCgCKuOLecK4lLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hK9fF-0000GU-V7; Fri, 26 Apr 2019 22:49:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK9f5-000078-W6; Fri, 26 Apr 2019 22:49:45 +0000
Received: by mail-oi1-f193.google.com with SMTP id l203so4224447oia.3;
 Fri, 26 Apr 2019 15:49:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kN+VciKgZd6jcxQb4UY3f5HrIMHWadQkiOAB3ugqPf8=;
 b=pWiA91EzeuzVtWOUOz+5j58v+4RBGE2cmfeH21fX6bpDnZEiSBCbRL0TFqcyLzWOX1
 NfGOsGSLxDtv9OE5I60yJztxeb2ryEGetCGcz3qn06pbegd4zzh9AHvMDqiUb2L8ITSJ
 EkazVGTPFZWNpHidkWaVbna2ouRLJeevW9ZPKqayIkRtAP+QqKSs640ZvGqW3fyg+to2
 JUjjcDUOOjnQf4mWSSU5lPgG7IYxtbLsE93l9ZS67repsQSIwUv/AnhDDr9g97hrp3GI
 Ar4QW3X16wp2ln2+sZ/8t0U2sChtlEa3Yrp0e9xSOZ3hzJ1isahcsK9k4DfXuKj+zkZd
 3YiA==
X-Gm-Message-State: APjAAAUe5cNnMQI8DNsv4zHliKt0I32BwxlKRhYOoYRwAvW7KQZxXVak
 wrkmVv8KOHgHWy2hx9blWw==
X-Google-Smtp-Source: APXvYqyR2gdrPPCjZwkgEy9aa4OtfVlOhM2lFz/CC8cStAQgMxfgUEUjKHviBX9jgk5i+31p758EUw==
X-Received: by 2002:aca:3e05:: with SMTP id l5mr8018709oia.22.1556318982975;
 Fri, 26 Apr 2019 15:49:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i136sm4599760oib.42.2019.04.26.15.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 15:49:42 -0700 (PDT)
Date: Fri, 26 Apr 2019 17:49:41 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [v3 1/3] dt-bindings: display: mediatek: update dpi  supported
 chips
Message-ID: <20190426224941.GA12234@bogus>
References: <20190416055242.75764-1-jitao.shi@mediatek.com>
 <20190416055242.75764-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416055242.75764-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_154944_045191_32C3C6CE 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 linux-pwm@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kumar Gala <galak@codeaurora.org>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 16 Apr 2019 13:52:40 +0800, Jitao Shi wrote:
> Add decriptions about supported chips, including MT2701 & MT8173 &
> mt8183
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt        | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
