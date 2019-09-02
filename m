Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7416A5340
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0bb1W4LXuuUkLhRC6SDmUOSnpeI/IfUQczOQciT/2c=; b=fY4tCb/7HoI7fG
	8igZImLQJRMJtEsEsteXFhQNAgCWuJYznXKFXxRQG8PW2kCyzLhfkscyjj7w33T2TUX9LS0j2LmuO
	kuumD54gmTtBSlyMrSOBhqYnpdHAn9d0Z8RshoLjKajZzlKjzhFtSDo9hw5WkG2FDQkZBR7BSAVnJ
	UG7Evaf/oauJZ9eHtUO4k1DqwqkjpBIzhXHvhcvp/9FcD+cTa8DD8W2zICoQO/WLX9WTyHGoOAgUD
	a5KTN9oj6jGtemdU2aL4gFpUMpgXHoBu8HmVG6VsTFVihhJgZWreDk9D8P+yym+KEL519wmLWpXyY
	iND2rWbtEPK1CV8wK+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ivT-0008Mr-9d; Mon, 02 Sep 2019 09:47:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ivQ-0008M7-DC
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 09:47:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id g207so9826218wmg.5
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 02:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=d0Fmd8+tPhsncECjkpyfN40FKyAZ9dwp7GhgzrHppXE=;
 b=qVngIIwui1J9tByelwV/mGZbVHFBFHyDB8d+zUgLu3YBU/pt2PyBLaNu6aJVP3PZu+
 ihkRHhUgNreGoIsCbkx1FNEXIz6W3YzxsPtykCOFZra1Ph5YrfDGBk5pUhNPXnyQhdOw
 D9ABWajSIFLGxjIDL3ZgE8fjcP4o/qvxAq8ScG/ooH2FuTnduj/fyZWm7jHaTjH42E/D
 Ei0dGMTfBr8owiAqXxN0DezEgPDMt9Z1EvGzVnLLyrgPVWZ3lXxJ9oZIffCqMvqKZt1l
 C76KOLTdO84oTFmQbF26UtdsQg6gT2TxP7R0Ue3uQ2+bt919+f7rtplpS6l1WtkiwEYy
 +qOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=d0Fmd8+tPhsncECjkpyfN40FKyAZ9dwp7GhgzrHppXE=;
 b=Ucp0m5qboEClHCCXOO0oj3JubiA5AuC+sBdYltTB2EPNBZrj4UzloZKk+TMYpmDYpU
 V1G4IHA9T4IkTtfxMM7Jn55m/HutiIld67lxcQZiKOKT2uE+Td5xwWfnxc4ct4+uLPX8
 PDQJP6XvyGkCsIYPyfUPgIFVXy44KoZuHKSP0X/cklTgOgfYZaOH9Uq2OES721ElRYWQ
 yZ5uFB59LafM+ShNCXCf6+2fDEHFZiwc3yoKbTL9iMJWsoUXIznua8NIyB+a2xWqsv/w
 dy3Zzot1JMKWfWdqKDhRWDgBtiAz7rpyOjw+AFqolFytwPREvYFqhLjPlIRugB0qCB5V
 p2JQ==
X-Gm-Message-State: APjAAAVwS/bKl+3H9grCmxjuhNND5Ah7TzF94YowneYxSo2v+WJVSUFv
 LKg1aYU82A37V7o7UU9EkCOhyw==
X-Google-Smtp-Source: APXvYqzpAmIdXWUOa0YAoYYeALNbgpYYaMFH/Rih64cJ0rC02eyJ+NoygykybAEJqvvgTgzMlJYBEA==
X-Received: by 2002:a1c:f106:: with SMTP id p6mr31938241wmh.148.1567417622917; 
 Mon, 02 Sep 2019 02:47:02 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id b18sm18199417wro.34.2019.09.02.02.47.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:47:02 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:47:00 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 05/13] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190902094700.GS32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-6-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-6-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024704_454544_2C5877CF 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gbW92ZSBjb2RlIHRvIHNlcGFy
YXRlIGhlYWRlci1maWxlIHRvIHJldXNlIGRlZmluaXRpb25zIGxhdGVyCj4gaW4gcG93ZXJvZmYt
ZHJpdmVyIChkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jKQo+IAo+IFN1Z2dl
c3RlZC1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVk
LW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gLS0t
Cj4gY2hhbmdlcyBzaW5jZSB2NTogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjQ6IG5vbmUKPiBjaGFu
Z2VzIHNpbmNlIHYzOiBub25lCj4gY2hhbmdlcyBzaW5jZSB2MjogYWRkIG1pc3NpbmcgY29tbWl0
LW1lc3NhZ2UKPiAtLS0KPiAgZHJpdmVycy9ydGMvcnRjLW10NjM5Ny5jICAgICAgIHwgNTUgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5o
IHwgNzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDcyIGluc2VydGlvbnMoKyksIDU0IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcnRjL3J0Yy1tdDYzOTcuYyBiL2RyaXZlcnMvcnRjL3J0Yy1tdDYzOTcuYwo+IGluZGV4IGI0
NmVkNGRjNzAxNS4uYzA4ZWU1ZWRmODY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1t
dDYzOTcuYwo+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1tdDYzOTcuYwo+IEBAIC05LDYwICs5LDcg
QEAKPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFw
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9ydGMuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L2lycWRvbWFp
bi5oPgo+IC0jaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gLSNpbmNsdWRlIDxs
aW51eC9vZl9hZGRyZXNzLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiAtI2luY2x1
ZGUgPGxpbnV4L2lvLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2Mzk3L2NvcmUuaD4KPiAt
Cj4gLSNkZWZpbmUgUlRDX0JCUFUJCTB4MDAwMAo+IC0jZGVmaW5lIFJUQ19CQlBVX0NCVVNZCQlC
SVQoNikKPiAtCj4gLSNkZWZpbmUgUlRDX1dSVEdSCQkweDAwM2MKPiAtCj4gLSNkZWZpbmUgUlRD
X0lSUV9TVEEJCTB4MDAwMgo+IC0jZGVmaW5lIFJUQ19JUlFfU1RBX0FMCQlCSVQoMCkKPiAtI2Rl
ZmluZSBSVENfSVJRX1NUQV9MUAkJQklUKDMpCj4gLQo+IC0jZGVmaW5lIFJUQ19JUlFfRU4JCTB4
MDAwNAo+IC0jZGVmaW5lIFJUQ19JUlFfRU5fQUwJCUJJVCgwKQo+IC0jZGVmaW5lIFJUQ19JUlFf
RU5fT05FU0hPVAlCSVQoMikKPiAtI2RlZmluZSBSVENfSVJRX0VOX0xQCQlCSVQoMykKPiAtI2Rl
ZmluZSBSVENfSVJRX0VOX09ORVNIT1RfQUwJKFJUQ19JUlFfRU5fT05FU0hPVCB8IFJUQ19JUlFf
RU5fQUwpCj4gLQo+IC0jZGVmaW5lIFJUQ19BTF9NQVNLCQkweDAwMDgKPiAtI2RlZmluZSBSVENf
QUxfTUFTS19ET1cJCUJJVCg0KQo+IC0KPiAtI2RlZmluZSBSVENfVENfU0VDCQkweDAwMGEKPiAt
LyogTWluLCBIb3VyLCBEb20uLi4gcmVnaXN0ZXIgb2Zmc2V0IHRvIFJUQ19UQ19TRUMgKi8KPiAt
I2RlZmluZSBSVENfT0ZGU0VUX1NFQwkJMAo+IC0jZGVmaW5lIFJUQ19PRkZTRVRfTUlOCQkxCj4g
LSNkZWZpbmUgUlRDX09GRlNFVF9IT1VSCQkyCj4gLSNkZWZpbmUgUlRDX09GRlNFVF9ET00JCTMK
PiAtI2RlZmluZSBSVENfT0ZGU0VUX0RPVwkJNAo+IC0jZGVmaW5lIFJUQ19PRkZTRVRfTVRICQk1
Cj4gLSNkZWZpbmUgUlRDX09GRlNFVF9ZRUFSCQk2Cj4gLSNkZWZpbmUgUlRDX09GRlNFVF9DT1VO
VAk3Cj4gLQo+IC0jZGVmaW5lIFJUQ19BTF9TRUMJCTB4MDAxOAo+IC0KPiAtI2RlZmluZSBSVENf
UEROMgkJMHgwMDJlCj4gLSNkZWZpbmUgUlRDX1BETjJfUFdST05fQUxBUk0JQklUKDQpCj4gLQo+
IC0jZGVmaW5lIFJUQ19NSU5fWUVBUgkJMTk2OAo+IC0jZGVmaW5lIFJUQ19CQVNFX1lFQVIJCTE5
MDAKPiAtI2RlZmluZSBSVENfTlVNX1lFQVJTCQkxMjgKPiAtI2RlZmluZSBSVENfTUlOX1lFQVJf
T0ZGU0VUCShSVENfTUlOX1lFQVIgLSBSVENfQkFTRV9ZRUFSKQo+IC0KPiAtc3RydWN0IG10NjM5
N19ydGMgewo+IC0Jc3RydWN0IGRldmljZQkJKmRldjsKPiAtCXN0cnVjdCBydGNfZGV2aWNlCSpy
dGNfZGV2Owo+IC0Jc3RydWN0IG11dGV4CQlsb2NrOwo+IC0Jc3RydWN0IHJlZ21hcAkJKnJlZ21h
cDsKPiAtCWludAkJCWlycTsKPiAtCXUzMgkJCWFkZHJfYmFzZTsKPiAtfTsKPiArI2luY2x1ZGUg
PGxpbnV4L21mZC9tdDYzOTcvcnRjLmg+Cj4gIAo+ICBzdGF0aWMgaW50IG10a19ydGNfd3JpdGVf
dHJpZ2dlcihzdHJ1Y3QgbXQ2Mzk3X3J0YyAqcnRjKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCBiL2luY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMu
aAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNzAyYzI5ZThj
NzQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5o
Cj4gQEAgLTAsMCArMSw3MSBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCAqLwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTQtMjAxOCBNZWRpYVRlayBJbmMuCgpU
aGlzIGlzIG91dCBvZiBkYXRlLgoKT25jZSBjb3JyZWN0ZWQsIHBsZWFzZSBhcHBseSBteToKCkZv
ciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsg
bWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
