Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CB81ABABD
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 10:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6Zet3BkgLwejJGvPkIodGm80rxCaCAKgSZdVKxeuyg=; b=nO466TL1d/CdDk
	FNx6F3OXnrI3ytaC2/GCZj42Z5gLIdK4tc93BqGcarz5MU0tngznVQpCNNntIsv5SbDLAEXr2tE5w
	AxZt/A9DEL/eNPeem5fu/gFg5WT8wBDeBBPQ8PEPsw7FxllScRke1lSlRQ6Qo2YMW74HwezK3aSPl
	xgypTybzFA31wP7V1GVIoYYrcA/K1P8TWXSrs6qdKHEEoq0Nqhqd07mvM872Gce2Y33MzwnPNnKJ9
	xF/2kyVMQlGGvJ1MZzDsLILbW/x7GxQIUm7wcQj7bHKz9weMLymWY2tXvBr8zhF/Ls6b3Moezn4s1
	hSsiYj3WA7PQ74ocM4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzTm-0005bb-IB; Thu, 16 Apr 2020 08:02:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzTj-0005bH-5F
 for linux-mediatek@lists.infradead.org; Thu, 16 Apr 2020 08:02:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id 131so4835256lfh.11
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Apr 2020 01:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HS3wh14onxfnVAAnelvXE++p13ZTdiNaT9jQji2UHzs=;
 b=vfo0PPID97JrT5WKWP575QXEQfMje8Y80j1J2y4VsCaINnaxBRBOwbphMCECPp2dp4
 B0B/RHjLCRYxZCwT3VKOk8T9rFGCrA9byaN8YYhGfODjonk63PPGpAkGlYgE5JJCG6t3
 brqYJkXoEUYfkA2gQEkVoUNveryy41bFDIecBXeQ8/6eLwP15B4SY1OZRlcAxaYoIirR
 NHB9W5QNDgUKLULGcDhmopaU6Oc18sPdfhqCsauY04aSSGj8PQ6dFzKaZ3FBM58TcTiX
 7Pm5np1XyoMAf9/uJ3q+fbexj3Ioq34+53S/J8DKepGd08s7ORCyG4xQJT/TryowzFmv
 +flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HS3wh14onxfnVAAnelvXE++p13ZTdiNaT9jQji2UHzs=;
 b=Hd2jlcug5eH42wOcYd8MecT4YPIujs4YILQPw/tMgAEjCwKaQ2umSwcrOrg+kTwuZX
 rCYQGNbzqiacJ9lq9PaIilHNhAkJSG0W3OZa41w7/BI6x8Pn35qLrOjBBTxnIwO8H7FA
 2HLNnbRAnoLIlhF5+7MajBx2/dqk1BhXG3VcZ0Ez40lFKFKa0sNBh8SWyiKOPxpoPcSz
 zD5MRPQmyA5JEp+wb0itDdYyp4juHZ477OJpfSjqwLbMWPma2hw7ie2cpctkw0t+TIWb
 wg5dndL2sXmAiMM0sr7qvytD5UxTBgspwHxFODWDDQe7J/uyE3JhlnfRE4++L1ea/YKF
 RB3Q==
X-Gm-Message-State: AGi0Pua2s2x1xLEUzNRvnzJPykF0K3rl1u7BEsAm6X9TWTUErYIAClYB
 rR0Ubf07ELPBII/tUwSRoTToc1ntvySu9TKKOw0Gjw==
X-Google-Smtp-Source: APiQypLuIixLf5ucqE301E0Pfpc6UIvL9GPllhUYp731XovnEOOMBJ2YWNaowR5LKg0u97weWLvK2TO24s4t9c/jatU=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr5389181lfp.77.1587024149690; 
 Thu, 16 Apr 2020 01:02:29 -0700 (PDT)
MIME-Version: 1.0
References: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1586255632-27528-1-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 10:02:18 +0200
Message-ID: <CACRpkdY_86VK2Acjk3MoJi4K_F2RP-2YW7nfEDN9Bg=TB9nr6w@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] pinctrl: mediatek: remove shadow variable
 declaration
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010231_216920_F7D5AAB3 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 12:34 PM <light.hsieh@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> Remove shadow declaration of variable 'pullup' in mtk_pinconf_get()
>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>

Patch applied for fixes, thanks for fixing this!

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
