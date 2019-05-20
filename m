Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DEE22AF7
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 06:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILgdIK8QGEAjrfgX/yZCPJXI60YPoQHcQKvsNrnrIEA=; b=adS7zXhzmS/wMy
	H1KfUBPqYtxjPZEMTm0NzaOZr7YrZw9ShCRwBOGIwfMlPj/i/lTGdva4M91ij+qIt5OEYZBabeCta
	42G/dgaP/8e8HzvDY/mZOjn6ZqUfLF/rrljo1Qt9vx3tR8nHuJTG1PEMOfLKumdfzbGvn57n5zap6
	i5oD4dXYz2Mzo1OIGNTdLh0UETZnvtgXXxrwBWbraoS00Fsmw7/5XXZnhSi4+Vsm84Tg8qOdnyi5W
	976hDvQEwcZxpcd+hkG657jal+/dIAbIlbAAjm/4OCQmHPTJLzHVjMa8/fNNWHEsNiH6yAAwJPOD2
	mTgyovhiJSKA6EyUEXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSaCk-0007G1-C5; Mon, 20 May 2019 04:47:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSaCa-00078S-M1
 for linux-mediatek@lists.infradead.org; Mon, 20 May 2019 04:47:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id n27so3542025pgm.4
 for <linux-mediatek@lists.infradead.org>; Sun, 19 May 2019 21:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=znPD6qSCRqBSVISTFwv2IDS0tUXtYPowDMtFJwfIVG4=;
 b=S6RC8/KF8MMJum/v07irupW0Jzz5U1cWZxnJgMBycQ7J895LZbEdp2S6H280gXSoa0
 SJ5+zv7fSANzrQNVh5LnV0BQn9+ZCCh0UNQnRg6VIf68xhokxw9TRlKz8vZ3/u0h7zq9
 oOhxl34eO8SRYCHxm57SuDWotd0GD9ObvR+77sI12lTOU4dHqSZjOWPMIMQYBpTQUS/f
 t+vlbGUb6r/jcyjTS9A5/DVvxWSHfBLDeTq1EPzFNxc/gvD4wFXOtLXUGJVEsGOG6BoH
 VcfIbzffj7ppyKXxEua+4ulXi/67rNtwR0vWGY1TmVrciBOjTa8cWJg5zsyHXsctJQ6W
 eJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=znPD6qSCRqBSVISTFwv2IDS0tUXtYPowDMtFJwfIVG4=;
 b=SP2IwXckJl0tVa0Cq/ehiJliY89Z0vSjzSGv4zt9HbM+tnwn0hNVbnHf5DVdbRkMOq
 a/yRp7q3SesUY+LHZFLKa+dZOuPt0SfSYlE01diyCivOQwfQ6KQipHyBhlxgpIpOqqyq
 N8Z+EExuW8CGUu/W15jgN10qgak2kcBx5QGPQktIUTRhQ4xykmont5V+Iy6e/IU8nYfd
 zlv7ctX5fOAds4jPJvNomX6ekR8SNoWJLa+Pnv3ojop7dmuiIZdX395ViWu0dp01vhuN
 joyrTBULJtIKLDfpA+b/uyrqj5YOwF50b/GVXaoWRLFzppUFKbeBlmqGC2aE1c7yO3zx
 npZw==
X-Gm-Message-State: APjAAAU/JimLgOCg5CGJLt/Yi9REQypADK8oQfpgo/N6+rbC6k6cz6so
 lDJhooJC3Edd740a7I3o5Z9TCg==
X-Google-Smtp-Source: APXvYqw2fylBLzNgfG8L7skLbYmkylnXBeuW32Xv1x+By0k9dxCCF49gfY26D3/iHYdXTo1cfNHHCQ==
X-Received: by 2002:a63:1c4:: with SMTP id 187mr46179260pgb.317.1558327627746; 
 Sun, 19 May 2019 21:47:07 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id s28sm22716058pgl.88.2019.05.19.21.47.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 21:47:06 -0700 (PDT)
Date: Mon, 20 May 2019 10:17:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20190520044704.unftq6q5vy73z5bo@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-7-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557997725-12178-7-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_214708_721088_915406AD 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 16-05-19, 17:08, Andrew-sh.Cheng wrote:
> From: Stephen Boyd <sboyd@codeaurora.org>
> 
> On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> employed to optimize the operating voltage of a device. At a
> given frequency, the hardware monitors dynamic factors and either
> makes a suggestion for how much to adjust a voltage for the
> current frequency, or it automatically adjusts the voltage
> without software intervention. Add an API to the OPP library for
> the former case, so that AVS type devices can update the voltages
> for an OPP when the hardware determines the voltage should
> change. The assumption is that drivers like CPUfreq or devfreq
> will register for the OPP notifiers and adjust the voltage
> according to suggestions that AVS makes.
> 
> This patch is devired from [1] submitted by Stephen.
> [1] https://lore.kernel.org/patchwork/patch/599279/
> 
> Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  drivers/opp/core.c     | 78 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pm_opp.h | 11 +++++++
>  2 files changed, 89 insertions(+)

This is an rcu implementation which got removed long back from OPP core. Please
align this with the latest changes.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
