Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F916F42E
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 01:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JwoF0pLV7G09uqMzEFJAYMPUQIvI80mnPYwrxuOXrw=; b=ZB0nxlcdo0XtkQ
	OFAS1dLA8J/RwnaJj0uEx178SjMMTLPCYMSglfi64Vi7q7shICpH/f/1Vm80pnJB6D3P9lm64XH0x
	sQbIa0RlPQhD1EsTre61SIeyXi35oV/Vn63h1wTsgFr8t25Z8TsK+S4lMelbxLMrlXHnsNMe40GMY
	ndCH6x8ibXqh+D0HwUGhCHZO07PFuDKx/6vI/iTmlNorPfffY6SoR3/AlEzvPHErK16r75zHnAmDR
	swzH9D5APZa5uY5l3QKcPtpIHE+CRIMqb59zVmkoCKmszuY2QrFrVlC6tzeWZlXykyWr++Z5cgJ6S
	PPr/eWLQwysegaXXzkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kRg-0000gl-HH; Wed, 26 Feb 2020 00:21:00 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kRd-0000gN-8q
 for linux-mediatek@lists.infradead.org; Wed, 26 Feb 2020 00:20:58 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 2so443774pfg.12
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Feb 2020 16:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oTRomC2W+BSThGwAQZ4mFHuy58uAWVt5delRT81IvjU=;
 b=MyRXyQ29K/5rD2ii3vJTRTLOQGj7HhOiybWmpSn7wQARePsB21oMCNPqUfbw9IaLkk
 fEjTnM0c2DDcQCOnKybAVQGg6IvEpPJl+yg2p7SHDkweG+05yI8+cKr/gCSIP1gB7R1F
 2uI0P2Q2CK/LKaq2R3M3UpOFhAR122qdsb7KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oTRomC2W+BSThGwAQZ4mFHuy58uAWVt5delRT81IvjU=;
 b=t5AfVSbAYRo/sDnyYCTXrM7I6wwWp6A5bny2iFyFjFK5TMxVHejgb968xDWTesHSle
 ytDHiDTxnjBvFTvmEl5ZOMTc0jw4mpyvNMfRMweJuVgEzhvwLeMxMOa1Pwua4+oNENgi
 vziaphAiwlafSfu3zy5b2bXTWEkxwJGeGwhg1E9W5CWbvB0JOj/oVH2wG2T7dGfIcT4Y
 KUsPt+TGUths4oY0Oc55VJH+jaZTHoSvi/Qcj5FxmkSFmtPOizN30fZhPv0eYEndeVps
 uA59fgX4W65her60VCshwgwBh/TWATYn2Y6sCeMwC3lciifMZ3603fAEjKe8xXh6NKOQ
 1VTw==
X-Gm-Message-State: APjAAAXjwpejE/umrsN6rt71CWCouBawKP6hC215wesVW8NO3RdEpFir
 aQojhqakM8T6kuwoH5wofwDiE1kW1Ng=
X-Google-Smtp-Source: APXvYqz6Frca228kjlGC0SIG/1sAFc3GnmC15jMuQGMKrNs9KVqLXkrs+ay2VmQIvWWr/kBV4kwZhA==
X-Received: by 2002:a62:5296:: with SMTP id g144mr1378972pfb.29.1582676455002; 
 Tue, 25 Feb 2020 16:20:55 -0800 (PST)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com.
 [209.85.215.180])
 by smtp.gmail.com with ESMTPSA id f13sm249388pfk.64.2020.02.25.16.20.54
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 16:20:54 -0800 (PST)
Received: by mail-pg1-f180.google.com with SMTP id h8so364020pgs.9
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Feb 2020 16:20:54 -0800 (PST)
X-Received: by 2002:a67:f541:: with SMTP id z1mr1739800vsn.70.1582676150352;
 Tue, 25 Feb 2020 16:15:50 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Wed, 26 Feb 2020 11:15:24 +1100
X-Gmail-Original-Message-ID: <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
Message-ID: <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162057_336856_79896307 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Thanks Rob

> This should be a child of some Mediatek firmware node. I assume
> watchdog is not the *only* function.

I am not quite sure what you mean, do you intend this:

 firmware {
   watchdog {
     ...
   }
}

I do not have a deep understanding of devicetree yet, can you point me
to anything that will help me understand
the consequences of that change?

Thanks

Evan

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
