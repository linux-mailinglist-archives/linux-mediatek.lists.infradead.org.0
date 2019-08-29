Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73A7A2723
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 21:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLrXsnb1YQm0YRREF9T6r9ola1DMS/L2jdyhnyxEauM=; b=cRRn6oH9s/RudC
	VZpPYhnwNczUnImmVq5u6LXBJn88xXDcy8V1xb39zZz3b7glsgxI858VhCaAui7hlXkjpbQvO7dLI
	aVDscu1doHRLX5uxGefVLj1ffBi4C+C4VOdpyXt7fd3SHpsS/BSett952ZGkMlPFNrxl9HyiRnQ+I
	eMJ9lThilUQYfWf6rceEYFPvU1Pu+iuQ0/6nfLsR//hyF+4in9COBFG6Wrk4nDe+CWO6b74i2be02
	qgfIq4Y2P0dsOMb0gbxusXSlZChAo0oMRmqGa0W5KQ8T7xXiszKn5uURB1BFsLUKP7p19RGFF0wQe
	uwtn+wrSb+f4wsOiukuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Pud-000616-B8; Thu, 29 Aug 2019 19:16:51 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PuM-0005q5-0G; Thu, 29 Aug 2019 19:16:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id m24so4507011otp.12;
 Thu, 29 Aug 2019 12:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qXXfSWb8r+ekX6AnOeZMT+WDuuUjHIsf04zXphaqwHY=;
 b=ivWGJeGRotIt/Cx0Rzy5DbyZPf699PXaAGNoAg2OevTpCAl6cB5Ft+tmbwls1MjUe9
 aZEpz5h7eLBcku3eW4EM54dnZSjUAR0CF6pjCnyLAY2Rl+1ZNHi4cKktIZZXqoQPqi1k
 HSRrvdpn1lhLa8gMIUgPThd9MdVzC99hVQGB2EL94rUbWpxnx9h3rcJqO3xIfnAqIxzD
 7sPq8Y81PkUk/F+3PlvqE7jd6UOudGj6MSUk0bfxdqil12w7zvKtd5e8cU23w1WMcqyZ
 lJ5yNauy8Tfifplo0J/ZtM5yTDFG5KyzeVcE25cEzq0yf9wCw2HS8VpJW98zvFVFlRch
 e9+w==
X-Gm-Message-State: APjAAAUg1UCJsNquB8FWd/MDuKTXE8cZQ4uxfM7cmEb8jdCeU+AilXxp
 sETBhL8uLRIXiOp8fnCAAQ==
X-Google-Smtp-Source: APXvYqw3wayppmtwe4suZgP9c/BFmJes13dE7GUWcARKQZLPrkt0xRRa40WAmFF2sKNFSuU8OEACug==
X-Received: by 2002:a05:6830:1345:: with SMTP id
 r5mr9441701otq.158.1567106192618; 
 Thu, 29 Aug 2019 12:16:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q85sm931405oic.52.2019.08.29.12.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:16:31 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:16:31 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [PATCH V3 01/10] dt-bindings: soc: Add dvfsrc driver bindings
Message-ID: <20190829191631.GA15714@bogus>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
 <1566995328-15158-2-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566995328-15158-2-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_121634_043230_E8B2642D 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Ryan Case <ryandcase@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 20:28:39 +0800, Henry Chen wrote:
> Document the binding for enabling dvfsrc on MediaTek SoC.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/dvfsrc.txt    | 23 ++++++++++++++++++++++
>  include/dt-bindings/soc/mtk,dvfsrc.h               | 14 +++++++++++++
>  2 files changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
>  create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
