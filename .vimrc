call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

" --- 필수 및 인코딩 ---
set nocompatible      " Vi 호환모드 해제 (필수)
syntax on             " 구문 강조
filetype plugin indent on " 파일 형식에 따른 인덴트 및 플러그인 활성화
set encoding=utf-8
set fileencodings=utf-8,cp949
set termguicolors

" --- UI 및 가독성 ---
set number            " 줄 번호 표시
set relativenumber    " 현재 줄 기준으로 상대 줄 번호 표시 (커서 이동 시 유용)
set cursorline        " 현재 줄 강조
set showcmd           " 화면 우측 하단에 명령어 표시
set wildmenu          " 명령행 완성 기능 향상
set laststatus=2      " 항상 상태 줄 표시
set scrolloff=5       " 커서 위아래로 최소 5줄 확보

" --- 검색 및 탭/들여쓰기 ---
set ignorecase        " 검색 시 대소문자 무시
set smartcase         " 대문자 검색 시에만 대소문자 구분
set incsearch         " 검색어 입력 중 실시간 검색
set hlsearch          " 검색어 하이라이트
set expandtab         " 탭 대신 공백 문자 사용
set tabstop=4         " 탭 문자 크기
set shiftwidth=4      " 자동 들여쓰기 크기
set softtabstop=4
set autoindent        " 자동 들여쓰기

" --- 백업 및 기타 ---
set nobackup          " 백업 파일 생성 안 함
set noswapfile        " 스왑 파일 생성 안 함
set hidden            " 저장 안 하고 버퍼 전환 허용
set mouse=a           " 마우스 사용 가능

" --- 모드 변경 시 커서 모양
let &t_ti.="\e[1 q" "시작 시 블록 커서
let &t_SI.="\e[5 q" "Insert 모드: 막대기(I-Beam) 커서
let &t_SR.="\e[3 q" "Replace 모드: 밑줄(Underline) 커서
let &t_EI.="\e[1 q" "Normal 모드: 블록(Block) 커서

" --- 단축키 매핑 (예시) ---
let mapleader=" "     " Leader 키를 스페이스바로 설정
nnoremap <leader>w :w<CR> " <Space> + w로 저장
nnoremap <leader>q :q<CR> " <Space> + q로 종료

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark " Or set background=light
